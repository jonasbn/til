# Find and Extract Objects

When you call a REST API, you get a JSON response. You can use `jq` to extract the data you need from the JSON response.

```shell
http https://jsonplaceholder.typicode.com/posts/1/comments | jq '.[] | select(.email == "Hayden@althea.biz")'
{
  "postId": 1,
  "id": 5,
  "name": "vero eaque aliquid doloribus et culpa",
  "email": "Hayden@althea.biz",
  "body": "harum non quasi et ratione\ntempore iure ex voluptates in ratione\nharum architecto fugit inventore cupiditate\nvoluptates magni quo et"
}
```

To get the whole set of objects, you can use the following:

```shell
http https://jsonplaceholder.typicode.com/posts/1/comments
```

## Resources and References

- [JSONPlaceholder](https://jsonplaceholder.typicode.com/)
- [jq](https://stedolan.github.io/jq/)
- [httpie](https://httpie.org/)
