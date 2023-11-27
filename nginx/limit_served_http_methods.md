# Limit served HTTP methods

I have a basic service with an NginX reverse-proxy in front. Since I only do read operations, I have limited the reverse-proxy to only respond to `GET`.

```text
server {
    ...
    location / {
        limit_except GET {
            deny all;
        }
        ...
    }
}
```

Example request:

```shell
http GET https://pxy.fi/7/wall
HTTP/1.1 308 Permanent Redirect
Access-Control-Allow-Headers: Authorization, Origin, X-Requested-With, Content-Type, Accept, User-Agent
Access-Control-Allow-Methods: OPTIONS, GET, DELETE, POST, PUT, HEAD, PATCH
Access-Control-Allow-Origin: *
CF-Cache-Status: DYNAMIC
CF-RAY: 82ca96d39d8c65f7-AMS
Cache-Control: no-store, no-cache, private
Connection: keep-alive
Content-Type: text/html; charset=UTF-8
Date: Mon, 27 Nov 2023 13:06:34 GMT
Server: cloudflare
Set-Cookie: __cf_bm=WHm3yRFGqbRS2jlj2oDdusU9YWaty6T9teKOijrx2s4-1701090394-0-AZd+QTm4j25MPePe2MlBMiwtxCaw5fwiA8AGTArTNRSSTeX3pDSG2aiZj1nWLKX+Buy8DYw2B0/DW07B8ThkMEI=; path=/; expires=Mon, 27-Nov-23 13:36:34 GMT; domain=.doserverless.co; HttpOnly; Secure; SameSite=None
Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-Request-ID: adda604367c1bdedc3c74464fc67f550
X-XSS-Protection: 1; mode=block
location: https://releases.llvm.org/7.0.0/tools/clang/docs/DiagnosticsReference.html#wall
x-openwhisk-activation-id: 7acc7cdc5bd442658c7cdc5bd4d26507

redirecting...
```

And we get a nice redirect, we need to add a `--follow` to see the actual resulting page.

And if we do a `PUT`, which we have disallowed in the above configuration.

```shell
http PUT https://pxy.fi/7/wall
HTTP/1.1 403 Forbidden
Connection: keep-alive
Content-Length: 162
Content-Type: text/html
Date: Mon, 27 Nov 2023 13:08:08 GMT
Server: nginx/1.22.0 (Ubuntu)

<html>
<head><title>403 Forbidden</title></head>
<body>
<center><h1>403 Forbidden</h1></center>
<hr><center>nginx/1.22.0 (Ubuntu)</center>
</body>
</html>
```

As outlined in the StackOverflow response listed below.

> According to nginx docs, limit_except GET will limit all methods except GET and HEAD ...

So `HEAD` is implicitly allowed with `GET` as far as I understand.

## Resources and References

- [StackOverflow: "NGINX limit_except is not working"](https://stackoverflow.com/questions/73808345/nginx-limit-except-is-not-woking) - title corrected.
