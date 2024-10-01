# Learn awk

```shell
echo "one two three" | awk '{print $0}'
one two three
```

```shell
echo "one two three" | awk '{print $1}'
one
```

```shell
echo "one two three" | awk '{print $3}'
three
```
