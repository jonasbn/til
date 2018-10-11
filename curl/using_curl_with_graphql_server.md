# Using curl with Graphql server

I have just started playing around with **GraphQL** and I really like using **httpie** for testing **REST**, testing **GraphQL** using **httpie** works out of the box.

```bash
$ http POST http://localhost:3000/graphql query="{user(id:2){id,name,knowledge{language,frameworks}}}"
```

## References

- [GitHub example](https://github.com/guilouro/simple-graphql-server)
