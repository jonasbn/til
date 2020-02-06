# Round float to 2 decimals

While doing some small programming exercises learning **Go**, I ran into the problem of rounding a float to 2 decimals.

While examining my options and go and doing some searching I fell over [this solution](https://yourbasic.org/golang/round-float-2-decimal-places/):

```go
x := 12.3456
fmt.Println(math.Floor(x*100)/100) // 12.34 (round down)
fmt.Println(math.Round(x*100)/100) // 12.35 (round to nearest)
fmt.Println(math.Ceil(x*100)/100)  // 12.35 (round up)
```

The great thing about it, apart from it's simplicity is that it is not **Go** specific. **JavaScript** has the exact same problem with standard library rounding functions, working only with integers.

The concept is quote simple. If you have a float, like the notorious _Pi_, with 5 decimals: `3.14159` and you for some nefarious mathical reason want to settle with 2 decimals.

1. Multiply by `100`: `3.14159 * 100 = 314.159`
1. Round the number using the standard mechanism for this: `Math.round(314.159);` and you get `314`, since our _round_ function now works with integers
1. Divide by `100`: `314 / 100` and you get `3.14`

For 3 decimals, simply use `1000` as your multiplier and divisor.

```javascript
console.log(Math.round(3.1415926535*1000)/1000);
// 3.142
```

## References

- [Yourbasic.org](https://yourbasic.org/golang/round-float-2-decimal-places/)
- [MDN: `Math.round()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/round)
