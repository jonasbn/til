# Generate CSV file

Transforming JSON data to a **basic** CSV is quite easy with `jq`. The following example is from the [JSONPlaceholder](https://jsonplaceholder.typicode.com/) service.

```shell
http https://jsonplaceholder.typicode.com/posts/1/comments | jq -r '.[] | [.id, .postId, .name, .email] | @csv'
1,1,"id labore ex et quam laborum","Eliseo@gardner.biz"
2,1,"quo vero reiciendis velit similique earum","Jayne_Kuhic@sydney.com"
3,1,"odio adipisci rerum aut animi","Nikita@garfield.biz"
4,1,"alias odio sit","Lew@alysha.tv"
5,1,"vero eaque aliquid doloribus et culpa","Hayden@althea.biz"
```

Do note the `-r/--raw-output` option . Is essential and is used to remove the double quotes from the output.

## Resources and References

- [Blog post by Rich Rose: "Convert JSON to CSV with JQ"](https://richrose.dev/posts/linux/jq/jq-json2csv/)
- [jq Manual: @csv](https://stedolan.github.io/jq/manual/#@csv)
- [httpie](https://httpie.io/)
- [JSONPlaceholder](https://jsonplaceholder.typicode.com/)
- [jq 1.7 Manual](https://devdocs.io/jq/)
