# Configure unattended upgrades

`unattended-upgrades` applies package updates automatically on a schedule, without you having to run `apt upgrade` by hand. I set this up on two of my Linux hosts so security updates land without me having to remember to log in and patch them.

## Install

```bash
sudo apt install unattended-upgrades apt-listchanges
```

## Enable periodic checks

`/etc/apt/apt.conf.d/20auto-upgrades` turns the feature on and tells `apt` to refresh its package lists daily:

```text
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Unattended-Upgrade "1";
```

This file can also be generated interactively with:

```bash
sudo dpkg-reconfigure unattended-upgrades
```

## Main configuration

The behaviour itself lives in `/etc/apt/apt.conf.d/50unattended-upgrades`. The directives that matter most:

- `Unattended-Upgrade::Allowed-Origins` — which repository origins get auto-patched, defaults to `${distro_id}:${distro_codename}-security`. The list also has a commented-out line for `${distro_id}:${distro_codename}-updates`, which pulls in regular (non-security) updates too
- `Unattended-Upgrade::Package-Blacklist` / `Package-Allowlist` — exclude or restrict to specific packages
- `Unattended-Upgrade::Remove-Unused-Dependencies` / `Remove-Unused-Kernel-Packages` — clean up afterwards
- `Unattended-Upgrade::Automatic-Reboot` / `Automatic-Reboot-Time` — reboot automatically after a kernel update, and at what time
- `Unattended-Upgrade::Mail` / `MailOnlyOnError` — where to send notifications, and whether only on failure

On my two hosts I left most of this at the defaults: no automatic reboot time specified, nothing blacklisted, and no mail configured. That means kernel updates still need a manual reboot, and there is no notification if an upgrade fails — worth revisiting if these hosts become less hands-on. The one change I did make was uncommenting the `-updates` origin:

```text
//  "${distro_id}:${distro_codename}-updates";
```

becomes:

```text
    "${distro_id}:${distro_codename}-updates";
```

so both hosts now get regular updates applied automatically, not just security patches.

## Verify

Dry-run shows what would happen without applying anything:

```bash
sudo unattended-upgrade --dry-run --debug
```

Actual runs get logged to `/var/log/unattended-upgrades/unattended-upgrades.log`.

## Resources and References

- [LinuxCapable: How to Configure Unattended Upgrades on Ubuntu Linux](https://linuxcapable.com/how-to-configure-unattended-upgrades-on-ubuntu-linux/)
- [Ubuntu Wiki: UnattendedUpgrades](https://wiki.ubuntu.com/UnattendedUpgrades)
