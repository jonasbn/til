# How to handle location header

When a permanent redirect is encountered, the location header is used to indicate the new URL. The location header is used in the response to a GET request. The permanent redirect is indicated by the HTTP status code [301][MDN301].

`curl` does not follow redirects by default, so you need to tell it to do so, like so:

Long form:

```bash
curl --location <URL>
```

Short form:

```bash
curl -L <URL>
```

Example:

```bash
curl -L https://pxy.fi/4/wall
```

```bash
curl 'https://pxy.fi/4/wall' -si|grep location
location: https://releases.llvm.org/4.0.0/tools/clang/docs/DiagnosticsReference.html#wall
```

And if you want to get the final URL:

```bash
curl -I -L 'https://pxy.fi/4/wall'
HTTP/2 302
date: Mon, 10 Apr 2023 18:50:14 GMT
content-length: 0
location: https://releases.llvm.org/4.0.0/tools/clang/docs/DiagnosticsReference.html#wall
x-request-id: 9b2a6981cd62b009e75f3029abd056de
access-control-allow-origin: *
access-control-allow-methods: OPTIONS, GET, DELETE, POST, PUT, HEAD, PATCH
access-control-allow-headers: Authorization, Origin, X-Requested-With, Content-Type, Accept, User-Agent
x-openwhisk-activation-id: 7fe44f20f111402ba44f20f111302b80
cache-control: no-store, no-cache, private
cf-cache-status: DYNAMIC
server: cloudflare
cf-ray: 7b5d2ca2598ab704-AMS
strict-transport-security: max-age=63072000; includeSubDomains; preload
x-frame-options: DENY
x-content-type-options: nosniff
x-xss-protection: 1; mode=block

HTTP/2 200
server: nginx/1.4.6 (Ubuntu)
content-type: text/html
last-modified: Thu, 27 Apr 2017 06:46:52 GMT
etag: "590193dc-ce6aa"
via: 1.1 varnish, 1.1 varnish
accept-ranges: bytes
date: Mon, 10 Apr 2023 18:50:15 GMT
age: 18
x-served-by: cache-lga21921-LGA, cache-cph2320059-CPH
x-cache: MISS, HIT
x-cache-hits: 0, 1
x-timer: S1681152615.139322,VS0,VE1
strict-transport-security: max-age=300
content-length: 845482
```

And a brief note:

> Use the -L, --location option to tell it to do that. When following redirects is enabled, curl will follow up to 50 redirects by default. You can change this number with the --max-redirs option.

## Resources and References

- [StackOverflow: "How to retrieve the real redirect location header with Curl? without using {redirect_url}"](https://stackoverflow.com/questions/46507336/how-to-retrieve-the-real-redirect-location-header-with-curl-without-using-redi)
- [StackOverflow: "Is there a way to follow redirects with command line cURL?"](https://stackoverflow.com/questions/18474690/is-there-a-way-to-follow-redirects-with-command-line-curl)
- [SuperUser: "Getting curl to output HTTP status code?"](https://superuser.com/questions/272265/getting-curl-to-output-http-status-code)

[MDN301]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/301
