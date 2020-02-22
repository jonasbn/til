# Use it - a CLI helper

This script is not originally mine but was contributed to Mac OS X Hints by Joey Gibson. The script
was originally written for iTerm, but I have made several changes over time, so I bring it here
with my changes. I use it together with iTerm2 and it's Dropbox integration, hence the path
pointing the plist file located under Dropbox (see line: 8). If you have your plist file:
`com.googlecode.iterm2? located elsewhere just change this path accordingly.

```bash
#!/bin/bash

arg=$1;
if [[ "$#" = "0" ]]; then
    echo "Usage: 'it bookmarkname' or 'it list'" && exit 1
elif [[ "$1" = "list" ]]; then
    defaults read ~/Dropbox/com.googlecode.iterm2|grep -e '\bName ='|awk '{$1="";$2=""; print $0}'|tr -d ';'
else
osascript <<ENDSCRIPT
on run argv
  tell application "iTerm2"
    activate
    tell the current terminal
        launch session "$1"
    end tell
  end tell
end run
ENDSCRIPT
fi
```

## References

- [MacOSXHints](http://www.macosxhints.com/article.php?story=20070409141256538)
