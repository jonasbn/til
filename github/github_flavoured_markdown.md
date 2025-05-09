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

## Resources and References

- [GitHub Docs: "Basic writing and formatting syntax"](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)
