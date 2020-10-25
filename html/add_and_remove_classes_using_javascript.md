# Add and Remove Classes Using JavaScript

You can dynamically remove and add classes for HTML tags quite easily with JavaScript.

```JavaScript
const div = document.createElement('div');
div.className = 'foo';

// use the classList API to remove and add classes
div.classList.remove("foo");
div.classList.add("bar", #baz");

div.classList.remove("bar", "baz");
```

## Resources and References

- [MDN: element.classList](https://developer.mozilla.org/en-US/docs/Web/API/Element/classList)
