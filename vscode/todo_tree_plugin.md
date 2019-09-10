# Todo Tree Plugin

This is a really nifty plugin for **vscode**

It lets you define tags in your code like `TODO` and `FIXME` (_the defaults_) which will then be highlighted in your code and will appear in a special sidebar section.

![Todo Tree screenshot example](todo-tree.png)

This is my configuration used for the above example.

```json
{
    "todo-tree.autoRefresh": true,
    "todo-tree.defaultHighlight": {
        "type": "text-and-comment"
    },
    "todo-tree.customHighlight": {
        "TODO": {
            "foreground": "black",
            "background": "green",
            "iconColour": "green",
            "icon": "check",
            "type": "text"
        },
        "FIXME": {
            "foreground": "black",
            "background": "red",
            "iconColour": "red",
            "icon": "bug"
        },
        "REVIEW": {
            "foreground": "black",
            "background": "cyan",
            "iconColour": "lightblue",
            "icon": "eye"
        },
        "HACK": {
            "foreground": "black",
            "background": "#FFA500",
            "iconColour": "orange",
            "icon": "alert"
        },
        "REF": {
            "foreground": "black",
            "background": "grey",
            "iconColour": "grey",
            "icon": "link",
            "type": "tag"
        }
    },
    "todo-tree.tags": [
        "TODO",
        "FIXME",
        "REVIEW",
        "HACK",
        "REF"
    ]
}
```

You can define you own tags and can assign, icons and colour schemes.

## References:

- [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
