# Use Bruno

Bruno is an alternative to Postman. It is a tool that allows you to make HTTP requests and see the responses. It is a great tool for testing APIs.

The UI application is nifty, but if you prefer the command line, then that is doable too.

Create a directory for your collection.

Add a file named: `bruno.json` with the following content, do remember to give provide a name that is meaningful to you.

```json
{
  "version": "1",
  "name": "Reqres tests",
  "type": "collection"
}
```

In the same directory, you can then add information on your requests as separate files.

```javascript
meta {
  name: List users
  type: http
  seq: 1
}

get {
  url: {{host}}/api/users
  body: none
  auth: bearer
}

headers {
  Content-Type: application/json
}

auth:bearer {
  token: {{bearer_token}}
}

assert {
  res.status: eq 200
  res.body.page: eq 1
  res.body: isJson
}

tests {
  test("Charles should be in the list", function() {
      const users = res.body.data || [];
      expect(users.some(user => user.first_name === 'Charles')).equals(true);
  });
}
```

If we put the above in a file named `list_users.bru`, then we can run the collection with the following command:

```bash
Running Request

list_users (getaddrinfo ENOTFOUND api)

Requests:    0 passed, 1 failed, 1 total
Tests:       0 passed, 0 total
Assertions:  0 passed, 0 total
Ran all requests - 0 ms
```

As you can see, the request failed because we did not provide a host. We can do that by adding a file named `.env` with the following content:

```json
{
  "host": "https://reqres.in"
}
```

TODO: More to come

## Resources and References

- [Bruno website](https://docs.usebruno.com/)
