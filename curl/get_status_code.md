# Get Status Code

```bash
curl -I -X GET example.com
```

Output:

```text
HTTP/1.1 200 OK
Age: 570148
Cache-Control: max-age=604800
Content-Type: text/html; charset=UTF-8
Date: Sat, 30 Oct 2021 15:47:32 GMT
Etag: "3147526947+ident"
Expires: Sat, 06 Nov 2021 15:47:32 GMT
Last-Modified: Thu, 17 Oct 2019 07:18:26 GMT
Server: ECS (dcb/7F82)
Vary: Accept-Encoding
X-Cache: HIT
Content-Length: 1256
```

Do note this does not work in combination with: `--data`/`-d`.

> Warning: You can only select one HTTP request method! You asked for both POST
> Warning: (-d, --data) and HEAD (-I, --head).

Instead you should use: `--data-raw`/`-D`, then you can POST data and get the status code at the same time.

## Resources and References

1. [SuperUser: Getting curl to output HTTP status code?](https://superuser.com/questions/272265/getting-curl-to-output-http-status-code)
