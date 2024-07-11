# Post JSON Data with cURL

Posting JSON using cURL is a common task when working with APIs. This TIL will show you how to post JSON data using cURL.

```bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{ "name": "xenomorpheus", "job": "supremeleader" }' \
  https://reqres.in/api/users
```

I can recommend [reqres.in](https://reqres.in/) for playing around and learning purposes.

## Resources and References

- [StackOverflow: How to POST JSON data with curl from the command line?](https://stackoverflow.com/questions/7172784/how-to-post-json-data-with-curl-from-the-command-line)
