# Prime Numbers

I fell over a video on YouTube demonstrating a regular expression that could check if a numbers was a prime.

The video is entitled: "How on Earth does ^.?$|^(..+?)\1+$ produce primes?", well it does not really produce primes it just checks them anyway, fascinating video.

This is the regex:

```regex
^.?$|^(..+?)\1+$
```

And it Perl form:

```regex
^         # beginning of line of line
.?
$         # end of line
|         # or
^         # beginning of line of line
(..+?)\1+
$         # end of line
```

## Resources and References

- [YouTube: @standupmaths: "How on Earth does ^.?$|^(..+?)\1+$ produce primes?"](https://youtu.be/5vbk0TwkokM?si=_lNEsO8ZU21MJhG6)
