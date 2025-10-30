# GitHub Flavoured Markdown

## How to add a collapsible section

## 1. Example

<details>
  <summary>Click me</summary>

### Heading

1. Foo
2. Bar
   - Baz
   - Qux

### Some Javascript

```js
function logSomething(something) {
  console.log('Something', something);
}
```

</details>

## 2. Code/Markdown

````md
<details>
  <summary>Click me</summary>
  
  ### Heading
  1. Foo
  2. Bar
     - Baz
     - Qux

  ### Some Javascript
  ```js
  function logSomething(something) {
    console.log('Something', something);
  }
  ```

</details>
````

REF: [Gist](https://gist.github.com/pierrejoubert73/902cc94d79424356a8d20be2b382e1ab)

## Alerts and Warnings

Like in Jira etc. you can get special highlights for notes, tips, important parts, warnings and alerts.

In GitHub-flavoured Markdown you use quote

```markdown
> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
```

It will render as follows:

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

REF: [GitHub Documentation](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)

## Resources and References

- [GitHub Docs: "Basic writing and formatting syntax"](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)
