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

Instead you should use: `--data-raw`/`-D`, then you can use a `POST` request for submitting data and get the status code at the same time.

And when doing a `POST` request with `-d`, you can use the `-i` flag to get the status code.

```bash
curl -i -X POST -d '{ "name": "morpheus", "job": "leader" }' https://reqres.in/api/users
HTTP/2 201
date: Thu, 11 Jul 2024 18:45:14 GMT
content-type: application/json; charset=utf-8
content-length: 104
report-to: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1720723514&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=A6JipdpAzxHSM8GNfZ2TuR5jfbYOBS2bEknDeIU0eNo%3D"}]}
reporting-endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1720723514&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=A6JipdpAzxHSM8GNfZ2TuR5jfbYOBS2bEknDeIU0eNo%3D
nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
x-powered-by: Express
access-control-allow-origin: *
etag: W/"68-qxA9ywpGiZc1AUNYubQV5Td/7rg"
via: 1.1 vegur
cf-cache-status: DYNAMIC
server: cloudflare
cf-ray: 8a1af30d8b941909-FRA

{"{ \"name\": \"morpheus\", \"job\": \"leader\" }":"","id":"830","createdAt":"2024-07-11T18:45:14.574Z"}%
```

And using the `-I` flag with a `POST` with `-D´ will give you the status code.

```bash
curl -I -X POST -D '{ "name": "xenomorpheus", "job": "supremeleader" }' https://reqres.in/api/users
HTTP/2 201
date: Thu, 11 Jul 2024 18:47:36 GMT
content-type: application/json; charset=utf-8
content-length: 51
report-to: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1720723656&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=ZXX1gAvpp2O5XrBICDDF7aX2FeUsob6xto4cmDMmx8U%3D"}]}
reporting-endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1720723656&sid=c4c9725f-1ab0-44d8-820f-430df2718e11&s=ZXX1gAvpp2O5XrBICDDF7aX2FeUsob6xto4cmDMmx8U%3D
nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
x-powered-by: Express
access-control-allow-origin: *
etag: W/"33-7323N+VKF5X1VpzH1aW55xyh9Jw"
via: 1.1 vegur
cf-cache-status: DYNAMIC
server: cloudflare
cf-ray: 8a1af685ec882bb4-FRA

curl: (8) Weird server reply
```

Do note the warning from the last example.

```
curl: (8) Weird server reply
```

Good luck with your _curling_ - I can recommend reqres.in for testing your `curl` commands.

## Resources and References

1. [SuperUser: Getting curl to output HTTP status code?](https://superuser.com/questions/272265/getting-curl-to-output-http-status-code)
