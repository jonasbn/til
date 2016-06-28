# Use jq

`jq` is an JSON command-line processor

Check: https://stedolan.github.io/jq/

You can use it to prettify your *JSON*

```bash
$ jq '.' < foo-ugly.json > foo-pretty.json
```

Tip from @chriswinters via Twitter

Or in conjuction with `curl`

```bash
$ curl http://jsonplaceholder.typicode.com/posts/1 |jq
```

```json
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
```

Source used in example: http://jsonplaceholder.typicode.com/

You can with luck install `jq` via [Homebrew](http://brew.sh/) on your Mac.
