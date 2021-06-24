# Using curl with GraphQL server

I have just started playing around with **GraphQL** and I just wanted to find out how you could use `curl` for testing **GraphQL** APIs.

```bash
curl 'https://countries.trevorblades.com/' \
  -X POST \
  -H 'content-type: application/json' \
  --data '{ "query": "{ continents { code name } }" }'
```

## Resources and References

1. [Blog post by Max Ivanov](https://www.maxivanov.io/make-graphql-requests-with-curl/)
1. [GitHub example](https://github.com/guilouro/simple-graphql-server)
1. [Example GraphQL APIs](https://apis.guru/graphql-apis/)
