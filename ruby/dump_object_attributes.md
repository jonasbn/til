# Dump objects attributes

You can dump a objects attributes using `ìnspect` and you can even extend it.

> Adding an inspect method to your class allows you to define how the class' attributes are
> displayed, rather than rely on default output. A lot of classes don't implement it well, but it
> can be really useful when debugging. Ruby will fall back to to_s if it can't find an inspect`
> method

```ruby
puts variable.inspect
```

## References

- [StackOverflow: How do I dump an object's fields to the console?](https://stackoverflow.com/questions/354547/how-do-i-dump-an-objects-fields-to-the-console)
- [Ruby Documentation: inspect](http://ruby-doc.org/core-2.0.0/Object.html#method-i-inspect)
