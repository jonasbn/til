# Default Parameters for Functions

For functions in JavaScript you can define a default value for a parameter for handling the case where a parameter is not provided, falling back to the dafault.

```javascript
const greeting = (title = 'World') => {
    return `Hello, ${ title }!`;
};

console.log(greeting());

module.exports = { greeting }
```

So when `greeting` is invoced without any parameters like so: `console.log(greeting());` it will emit the interpolated string:

```bash
$ node helloworld.js
Hello, World!
```

## Resources and References

- [Blog post by Dmitri Pavlutin: "Let's Master JavaScript Function Parameters"](https://dmitripavlutin.com/javascript-function-parameters/)
