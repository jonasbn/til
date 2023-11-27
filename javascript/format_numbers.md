# Formatting Numbers

The other day I fell over this when attempting to layout some basic ground rules for number formatting in our stack.

JavaScripts NumberFormat is quite nice, there are corners it does not cover, but in general it is quite nice to use.

```javascript
#!/usr/bin/env node

const number = 123456.789;

console.log(
  new Intl.NumberFormat('da-DK', { style: 'currency', currency: 'EUR' }).format(
    number,
  ),
);
// Expected output: "123.456,79 €"

console.log(
    new Intl.NumberFormat('dk', { style: 'decimal' }).format(
      number,
    ), 'm2'
  );
  // Expected output: "123.456,79 €"


// The Japanese yen doesn't use a minor unit
console.log(
  new Intl.NumberFormat('ja-JP', { style: 'currency', currency: 'JPY' }).format(
    number,
  ),
);
// Expected output: "￥123,457"

// Limit to three significant digits
console.log(
  new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(
    number,
  ),
);
// Expected output: "1,23,000"
```

## Resources and References

- [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat/NumberFormat)
