# Handle Gzip

curl will automatically decompress the response if you set the `--compressed` flag:

`curl --compressed "http://example.com"`

You can find out if the response is compressed by looking at the `Content-Encoding` header.

## Resources and References

- [StackOverflow: "How to properly handle a gzipped page when using curl?"](https://stackoverflow.com/questions/8364640/how-to-properly-handle-a-gzipped-page-when-using-curl)
