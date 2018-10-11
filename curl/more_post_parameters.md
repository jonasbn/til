# More POST parameters

Using `curl` for fast assertion of some HTTP based services is nifty.

One thing, which was not completely clear for me from the man-page is how to provide more than one
parameter.

```bash
$ curl -F foo=bar https://someurl/
```

But I just tried using more than one -F flag and it worked like a charm

```bash
$ curl -F foo=bar -F baz=foo https://someurl/
```
