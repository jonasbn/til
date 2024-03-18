# Print Request and Response

This is a standard request using `httpie`:

```bash
http https://reqres.in/api/users/2
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Age: 3696
CF-Cache-Status: HIT
CF-RAY: 85f157691c9637cb-FRA
Cache-Control: max-age=14400
Connection: keep-alive
Content-Encoding: gzip
Content-Type: application/json; charset=utf-8
Date: Mon, 04 Mar 2024 10:56:44 GMT
Etag: W/"118-pbdwwFo9SKNhD3Lx5iHJyngpq00"
Nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
Report-To: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1709136938&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=UB5XwKF5Kjiw2yYZS2govX4WbvIFAaZDNAD6kI3L2Gc%3D"}]}
Reporting-Endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1709136938&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=UB5XwKF5Kjiw2yYZS2govX4WbvIFAaZDNAD6kI3L2Gc%3D
Server: cloudflare
Transfer-Encoding: chunked
Vary: Accept-Encoding
Via: 1.1 vegur
X-Powered-By: Express

{
    "data": {
        "avatar": "https://reqres.in/img/faces/2-image.jpg",
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "id": 2,
        "last_name": "Weaver"
    },
    "support": {
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
        "url": "https://reqres.in/#support-heading"
    }
}
```

The default behavior is to print the response headers and body.

You can control this using the `--print` / `-p` flag.

And you have the following options:

- `H` request headers
- `B` request body
- `h` response headers (default)
- `b` response body (default)
- `m` response metadata

If we only want the request headers:

```bash
http --print H https://reqres.in/api/users/2
GET /api/users/2 HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Host: reqres.in
User-Agent: HTTPie/3.2.2
```

And finally you can use the flags:

`--verbose` / `-v`

```bash
http --verbose https://reqres.in/api/users/2
GET /api/users/2 HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Host: reqres.in
User-Agent: HTTPie/3.2.2



HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Age: 3724
CF-Cache-Status: HIT
CF-RAY: 85f158146b03383a-FRA
Cache-Control: max-age=14400
Connection: keep-alive
Content-Encoding: gzip
Content-Type: application/json; charset=utf-8
Date: Mon, 04 Mar 2024 10:57:12 GMT
Etag: W/"118-pbdwwFo9SKNhD3Lx5iHJyngpq00"
Nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
Report-To: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1709136938&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=UB5XwKF5Kjiw2yYZS2govX4WbvIFAaZDNAD6kI3L2Gc%3D"}]}
Reporting-Endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1709136938&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=UB5XwKF5Kjiw2yYZS2govX4WbvIFAaZDNAD6kI3L2Gc%3D
Server: cloudflare
Transfer-Encoding: chunked
Vary: Accept-Encoding
Via: 1.1 vegur
X-Powered-By: Express

{
    "data": {
        "avatar": "https://reqres.in/img/faces/2-image.jpg",
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "id": 2,
        "last_name": "Weaver"
    },
    "support": {
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
        "url": "https://reqres.in/#support-heading"
    }
}
```

## Resources and References

- [StackOverflow](https://stackoverflow.com/questions/14480874/how-to-print-the-request-when-using-httpie)
- [HTTPie](https://httpie.io/)
- [reqreq.in](https://reqres.in/)
