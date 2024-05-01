# Send a Bearer Token Using curl

This guide shows you how to send a Bearer Token using the command line tool `curl`.

For the authorization header, you need to use the `Authorization` header with the value `Bearer {token}`, like so:

```bash
curl https://reqbin.com/echo/get/json
   -H "Accept: application/json"
   -H "Authorization: Bearer {token}"
```

Replace `{token}` with your actual token.

## Resources and References

- [reqbin.com](https://reqbin.com/req/c-hlt4gkzd/curl-bearer-token-authorization-header-example)
