# Split an Integer into an Array

I needed this for implementing a arabic to roman numeral converter. I needed to split the integer into an array of its digits.

```ruby
digit = 123
digits = digit.to_s.chars.map(&:to_i)

puts digits.inspect
```

And if you want to reverse the array, you can use the `reverse` method.

```ruby
digit = 123
digits = digit.to_s.chars.reverse.map(&:to_i)

puts digits.inspect
```

## Resources and References

- [StackOverflow: "Ruby Split Integer Into Array"](https://stackoverflow.com/questions/15916754/ruby-split-integer-into-array)
