# Concatenate two fields in jq

You can easily concatenate two fields in jq using the `+` operator.

```shell
echo '{"channel": "youtube", "profile_type": "video", "member_key": "hello"}' \
 | jq '{channel: (.profile_type + "." + .channel)}'
```

## Resources and References

- [StackOverflow: Concat 2 fields in JSON using jq](https://stackoverflow.com/questions/37710718/concat-2-fields-in-json-using-jq)
