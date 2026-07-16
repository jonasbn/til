# Use SSH

## SSH Reconnect helper script

I have this little SSH helper script to automatically wait for a remote host to come back online after reboot and reconnect via SSH.

This is helpful for reboots of remote servers etc. for kernel updates etc.

```shell
#!/bin/bash

# SSH Reconnect Script
# Waits for a remote host to come back online after reboot and reconnects via SSH
# Supports SSH config file hostnames and aliases

set -euo pipefail

# Configuration
DEFAULT_PING_INTERVAL=5
DEFAULT_SSH_TIMEOUT=10
DEFAULT_MAX_ATTEMPTS=120  # 10 minutes at 5-second intervals
SSH_CONFIG_FILE="$HOME/.ssh/config"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to display usage
usage() {
    cat << EOF
Usage: $0 [OPTIONS] HOST [USER]

Wait for a remote host to come back online after reboot and reconnect via SSH.
Supports SSH config hostnames and aliases from ~/.ssh/config.

OPTIONS:
    -p, --port PORT         SSH port (default: from SSH config or 22)
    -i, --interval SECONDS  Ping interval in seconds (default: $DEFAULT_PING_INTERVAL)
    -t, --timeout SECONDS   SSH connection timeout (default: $DEFAULT_SSH_TIMEOUT)
    -m, --max-attempts NUM  Maximum ping attempts (default: $DEFAULT_MAX_ATTEMPTS)
    -k, --key-file FILE     SSH private key file (default: from SSH config)
    -c, --command COMMAND   Command to execute after connecting (optional)
    -q, --quiet             Quiet mode - minimal output
    -l, --list-hosts        List available hosts from SSH config
    -h, --help              Show this help message

ARGUMENTS:
    HOST                    Remote hostname, IP address, or SSH config alias
    USER                    SSH username (optional, defaults to SSH config or current user)

EXAMPLES:
    $0 jumphost                                    # Use SSH config alias
    $0 192.168.1.100                              # Direct IP
    $0 -c "uptime" reverseproxy                    # Execute command on SSH config host
    $0 --list-hosts                               # Show available SSH config hosts

SSH CONFIG INTEGRATION:
    The script automatically reads ~/.ssh/config and extracts:
    - HostName (actual IP/hostname to ping)
    - User (SSH username)
    - Port (SSH port)
    - IdentityFile (SSH private key)

EOF
}

# Function to log messages
log() {
    if [[ "${QUIET:-false}" != "true" ]]; then
        echo -e "${1}"
    fi
}

# Function to parse SSH config for a given host
parse_ssh_config() {
    local host_alias="$1"
    local config_file="${SSH_CONFIG_FILE}"
    
    if [[ ! -f "$config_file" ]]; then
        log "${YELLOW}Warning: SSH config file not found at $config_file${NC}"
        return 1
    fi
    
    # Use ssh -G to get the effective configuration for the host
    # This handles all the SSH config parsing including wildcards and includes
    if command -v ssh >/dev/null 2>&1; then
        ssh -G "$host_alias" 2>/dev/null || return 1
    else
        return 1
    fi
}

# Function to extract value from SSH config output
extract_config_value() {
    local config_output="$1"
    local key="$2"
    
    echo "$config_output" | grep -i "^${key} " | head -n1 | awk '{print $2}' || echo ""
}

# Function to list available hosts from SSH config
list_ssh_hosts() {
    local config_file="${SSH_CONFIG_FILE}"
    
    if [[ ! -f "$config_file" ]]; then
        log "${RED}SSH config file not found at $config_file${NC}"
        return 1
    fi
    
    log "${CYAN}Available SSH hosts from $config_file:${NC}"
    log "${BLUE}================================================${NC}"
    
    # Parse hosts from SSH config, excluding wildcards
    grep -i "^Host " "$config_file" | \
    awk '{for(i=2;i<=NF;i++) print $i}' | \
    grep -v '\*' | \
    sort -u | \
    while read -r host; do
        if [[ -n "$host" ]]; then
            # Get the actual hostname/IP
            local config_output
            if config_output=$(parse_ssh_config "$host" 2>/dev/null); then
                local hostname=$(extract_config_value "$config_output" "hostname")
                local user=$(extract_config_value "$config_output" "user")
                local port=$(extract_config_value "$config_output" "port")
                
                printf "${GREEN}%-20s${NC} -> ${YELLOW}%s@%s:%s${NC}\n" "$host" "$user" "$hostname" "$port"
            else
                printf "${GREEN}%-20s${NC} -> ${RED}(config parse error)${NC}\n" "$host"
            fi
        fi
    done
}

# Function to resolve SSH config details
resolve_ssh_config() {
    local host_alias="$1"
    local provided_user="$2"
    local provided_port="$3"
    local provided_key="$4"
    
    # Try to parse SSH config
    local config_output
    if config_output=$(parse_ssh_config "$host_alias" 2>/dev/null); then
        # Extract values from SSH config
        local config_hostname=$(extract_config_value "$config_output" "hostname")
        local config_user=$(extract_config_value "$config_output" "user")
        local config_port=$(extract_config_value "$config_output" "port")
        local config_key=$(extract_config_value "$config_output" "identityfile")
        
        # Expand ~ in identity file path
        if [[ "$config_key" =~ ^~/ ]]; then
            config_key="${HOME}${config_key#\~}"
        fi
        
        # Use provided values or fall back to config values or defaults
        SSH_HOSTNAME="${config_hostname:-$host_alias}"
        SSH_USER="${provided_user:-${config_user:-$USER}}"
        SSH_PORT="${provided_port:-${config_port:-22}}"
        SSH_KEY="${provided_key:-$config_key}"
        
        log "${CYAN}Using SSH config for '$host_alias':${NC}"
        log "${BLUE}  Hostname: $SSH_HOSTNAME${NC}"
        log "${BLUE}  User: $SSH_USER${NC}"
        log "${BLUE}  Port: $SSH_PORT${NC}"
        if [[ -n "$SSH_KEY" ]]; then
            log "${BLUE}  Identity: $SSH_KEY${NC}"
        fi
    else
        # No SSH config found, use direct values
        SSH_HOSTNAME="$host_alias"
        SSH_USER="${provided_user:-$USER}"
        SSH_PORT="${provided_port:-22}"
        SSH_KEY="$provided_key"
        
        log "${YELLOW}No SSH config found for '$host_alias', using direct connection${NC}"
    fi
}

# Function to check if host is reachable
check_host_reachable() {
    local host="$1"
    if ping -c 1 -W 3000 "$host" >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Function to check if SSH is available
check_ssh_available() {
    local host="$1"
    local port="$2"
    local timeout="$3"
    
    if timeout "$timeout" bash -c "</dev/tcp/$host/$port" 2>/dev/null; then
        return 0
    else
        return 1
    fi
}

# Function to wait for host to come back online
wait_for_host() {
    local host="$1"
    local port="$2"
    local interval="$3"
    local timeout="$4"
    local max_attempts="$5"
    local attempt=1
    
    log "${BLUE}Waiting for host $host to come back online...${NC}"
    log "${YELLOW}Checking every $interval seconds (max $max_attempts attempts)${NC}"
    
    while [[ $attempt -le $max_attempts ]]; do
        log "${BLUE}Attempt $attempt/$max_attempts: Checking connectivity...${NC}"
        
        if check_host_reachable "$host"; then
            log "${GREEN}✓ Host $host is reachable${NC}"
            
            log "${BLUE}Checking SSH availability on port $port...${NC}"
            if check_ssh_available "$host" "$port" "$timeout"; then
                log "${GREEN}✓ SSH is available on $host:$port${NC}"
                return 0
            else
                log "${YELLOW}⚠ Host reachable but SSH not yet available${NC}"
            fi
        else
            log "${RED}✗ Host $host not reachable${NC}"
        fi
        
        if [[ $attempt -lt $max_attempts ]]; then
            sleep "$interval"
        fi
        
        ((attempt++))
    done
    
    log "${RED}✗ Maximum attempts reached. Host may not be available.${NC}"
    return 1
}

# Function to connect via SSH
ssh_connect() {
    local host_alias="$1"
    local command="$2"
    
    local ssh_args=()
    ssh_args+=("-o" "ConnectTimeout=$DEFAULT_SSH_TIMEOUT")
    ssh_args+=("-o" "ServerAliveInterval=30")
    ssh_args+=("-o" "ServerAliveCountMax=3")
    
    if [[ -n "$command" ]]; then
        log "${GREEN}Connecting to $host_alias and executing: $command${NC}"
        ssh "${ssh_args[@]}" "$host_alias" "$command"
    else
        log "${GREEN}Connecting to $host_alias...${NC}"
        ssh "${ssh_args[@]}" "$host_alias"
    fi
}

# Main function
main() {
    local host=""
    local user=""
    local port=""
    local interval="$DEFAULT_PING_INTERVAL"
    local timeout="$DEFAULT_SSH_TIMEOUT"
    local max_attempts="$DEFAULT_MAX_ATTEMPTS"
    local key_file=""
    local command=""
    local quiet="false"
    local list_hosts="false"
    
    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -p|--port)
                port="$2"
                shift 2
                ;;
            -i|--interval)
                interval="$2"
                shift 2
                ;;
            -t|--timeout)
                timeout="$2"
                shift 2
                ;;
            -m|--max-attempts)
                max_attempts="$2"
                shift 2
                ;;
            -k|--key-file)
                key_file="$2"
                shift 2
                ;;
            -c|--command)
                command="$2"
                shift 2
                ;;
            -q|--quiet)
                quiet="true"
                shift
                ;;
            -l|--list-hosts)
                list_hosts="true"
                shift
                ;;
            -h|--help)
                usage
                exit 0
                ;;
            -*)
                echo "Unknown option: $1" >&2
                usage >&2
                exit 1
                ;;
            *)
                if [[ -z "$host" ]]; then
                    host="$1"
                elif [[ -z "$user" ]]; then
                    user="$1"
                else
                    echo "Too many arguments" >&2
                    usage >&2
                    exit 1
                fi
                shift
                ;;
        esac
    done
    
    # Export QUIET for log function
    export QUIET="$quiet"
    
    # Handle list hosts option
    if [[ "$list_hosts" == "true" ]]; then
        list_ssh_hosts
        exit 0
    fi
    
    # Validate required arguments
    if [[ -z "$host" ]]; then
        echo "Error: HOST is required" >&2
        echo "Use --list-hosts to see available SSH config hosts" >&2
        usage >&2
        exit 1
    fi
    
    # Validate key file if specified
    if [[ -n "$key_file" && ! -f "$key_file" ]]; then
        echo "Error: Key file '$key_file' not found" >&2
        exit 1
    fi
    
    log "${BLUE}Starting SSH reconnect script${NC}"
    
    # Resolve SSH configuration
    resolve_ssh_config "$host" "$user" "$port" "$key_file"
    
    # Validate resolved SSH key
    if [[ -n "$SSH_KEY" && ! -f "$SSH_KEY" ]]; then
        log "${YELLOW}Warning: SSH key file '$SSH_KEY' from config not found${NC}"
        SSH_KEY=""
    fi
    
    log "${BLUE}Target: $SSH_USER@$SSH_HOSTNAME:$SSH_PORT${NC}"
    
    # Wait for host to come back online
    if wait_for_host "$SSH_HOSTNAME" "$SSH_PORT" "$interval" "$timeout" "$max_attempts"; then
        log "${GREEN}Host is back online! Connecting...${NC}"
        sleep 2  # Brief pause to ensure SSH service is fully ready
        ssh_connect "$host" "$command"  # Use original host alias for SSH connection
    else
        log "${RED}Failed to detect host coming back online${NC}"
        exit 1
    fi
}

# Run main function with all arguments
main "$@"
```

Gist: [jonasbn/ssh-reconnect.sh](https://gist.github.com/jonasbn/b07da601d38f747d636a67215402250a)
