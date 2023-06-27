# Count elements

Their might be an easier way, but this is how I count elements in a JSON array using `jq` and some other command line tooling.

```shell
http https://jsonplaceholder.typicode.com/posts | jq '.[] .id' |wc -l
```

The above example uses **httpie** to fetch the JSON array, **jq** to extract the elements and **wc** to count the elements. The example data are from the [JSONPlaceholder](https://jsonplaceholder.typicode.com/) service.

If we want to count the number of comments on post with id `1` from the email: `Hayden@althea.biz`, we can do the following:

```shell
http https://jsonplaceholder.typicode.com/posts/1/comments | jq '.[] | select(.email == "Hayden@althea.biz") .email' | wc -l
```

## Resources and References

- [JSONPlaceholder](https://jsonplaceholder.typicode.com/)
- [jq](https://stedolan.github.io/jq/)
- [httpie](https://httpie.org/)
- [wc](https://en.wikipedia.org/wiki/Wc_(Unix))
