# SyntaxError: Unexpected token o in JSON at position 1

This particular error is not particularly descriptive, what it means is that the data you are attempting to parse is already an object, so it makes no sense to parse it again.

I got this issue with Bruno.app

```javascript
script:post-response {
  var body = res.getBody();
  var json = JSON.parse(body);
  var user_id = json.data.user_id;
  bru.setVar("user_id", user_id);
  console.log("Created user with id: " + user_id);
}
```

Should be written as, since the body of the response is already an object:

```javascript
script:post-response {
  var body = res.getBody();
  var user_id = body.data.user_id;
  bru.setVar("user_id", user_id);
  console.log("Created user with id: " + user_id);
}
```

The response in this [StackOverflow] question outlines it pretty well.

```javascript
new Object().toString()
// "[object Object]"

JSON.parse(new Object())
// Uncaught SyntaxError: Unexpected token o in JSON at position 1

JSON.parse("[object Object]")
// Uncaught SyntaxError: Unexpected token o in JSON at position 1
```

## Resources and References

- [Stackoverflow: SyntaxError: Unexpected token o in JSON at position 1][StackOverflow]

[StackOverflow]: https://stackoverflow.com/questions/38380462/syntaxerror-unexpected-token-o-in-json-at-position-1
