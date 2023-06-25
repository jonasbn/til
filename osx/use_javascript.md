# Use JavaScript

You can use **JavaScript** for automating tasks on **OSX**/**MacOS**, like you used to be able to do with **AppleScript**.

Here is a basic example:

```javascript
#!/usr/bin/osascript -l JavaScript

console.log("hello world");
```

If you do `chmod 755 helloworld.js`, where `helloworld.js` is a file with the above script as contents you can the do the following:

```bash
$ ./helloworld.js
```

This does however not really demonstrate the integration with **OSX**/**MacOS**.

```javascript
#!/usr/bin/osascript -l JavaScript

currentApp = Application("Reminders");
currentApp.includeStandardAdditions = true;

currentApp.activate();

var list = currentApp.defaultList();
var str = '';

for (i = 0; i < list.reminders.length; i++)
{
    var r = list.reminders[i];
    if (r.completed() === false) {
        str = str + ' ' + r.name() + "\n";
    }
}

console.log(str);
```

This script list all unfinished reminders from the default list.

Do note that this script is _incredibly slow_, I have no idea, whether this is my implementation, since I am a **JavaScript** n00b, or whether it is the integration.

## Resources and References

- [Apple: Introduction to JavaScript for Automation Release Notes](https://developer.apple.com/library/archive/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/Introduction.html)
- [Ars Technica: "OS X 10.10 Yosemite: The Ars Technica Review"](https://arstechnica.com/gadgets/2014/10/os-x-10-10/24/#javascript-automation)
- [Article from Telerik: "Apple’s Biggest Announcement Yet Isn’t About Phones Or Watches"](https://developer.telerik.com/featured/apples-biggest-announcement-yet-isnt-phones-watches/)
