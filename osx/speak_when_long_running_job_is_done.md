# Speak when long running job is done

```bash
#!/bin/bash
/usr/bin/osascript -e "display notification \"$*\" with title \"Hey!\""
/usr/bin/say -v Alex "Hey! $*"

# Setup: Add this to your /usr/local/bin in a file called hey. chmod +x it to make it an executable.
# Usage: sleep 2 && hey wake up!
```

- [Github: gist by Tara Gibbs](https://gist.github.com/tara-gibbs/cf91bc86c580f244de0ae9f5978edaac)
