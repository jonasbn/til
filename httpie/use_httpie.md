# Use httpie

`httpie` is an alternative to utililities like `curl`

```bash
$ http  http://jsonplaceholder.typicode.com/posts/1
```

```
{
HTTP/1.1 200 OK
Access-Control-Allow-Credentials: true
Cache-Control: no-cache
Connection: keep-alive
Content-Length: 292
Content-Type: application/json; charset=utf-8
Date: Tue, 28 Jun 2016 07:16:45 GMT
Etag: W/"124-yv65LoT2uMHrpn06wNpAcQ"
Expires: -1
Pragma: no-cache
Server: Cowboy
Vary: Origin, Accept-Encoding
Via: 1.1 vegur
X-Content-Type-Options: nosniff
X-Powered-By: Express
```

```json
{
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit
    molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "userId": 1
}
```

Source used in example: http://jsonplaceholder.typicode.com/

NB: Remember to quote URLs including `&` (ampersand) in the path.

You can with luck install `httpie` via [Homebrew](http://brew.sh/) on your Mac.
