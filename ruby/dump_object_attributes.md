# Dump objects attributes

You can dump a objects attributes using `ìnspect` and you can even extend it.

> Adding an inspect method to your class allows you to define how the class' attributes are
> displayed, rather than rely on default output. A lot of classes don't implement it well, but it
> can be really useful when debugging. Ruby will fall back to to_s if it can't find an inspect`
> method

```ruby
puts variable.inspect
```

Do note that this works for _all_ data types, not just objects. And there is even an alternative do see [`pp`](https://docs.ruby-lang.org/en/2.2.0/PP.html).

```ruby
pp variable
```

## References

- [StackOverflow: How do I dump an object's fields to the console?](https://stackoverflow.com/questions/354547/how-do-i-dump-an-objects-fields-to-the-console)
- [Ruby Documentation: inspect](http://ruby-doc.org/core/Object.html#method-i-inspect)

- [StackOverflow: Ruby equivalent of Perl Data::Dumper](https://stackoverflow.com/questions/2159426/ruby-equivalent-of-perl-datadumper)
- [Ruby Documentation: pp](https://docs.ruby-lang.org/en/2.2.0/PP.html)
