# Use ag

`ag` aka _Silver Searcher_ is an alternative to `ack` etc.

It is very fast and easy to use, give it a spin.

## Working with `-c` (count)

I use `ag` to search a large code base locally, often looking for usage or bad patterns.

Just recently I was looking for the error message: `something went wrong`.

So I did `ag -c 'something went wrong'`

It outputs the files and the count.

So in order to sum the counts, I did the following:

```shell
ag -c 'something went wrong' | awk -F: '{s+=$2} END {print s}'
762
```

I got a sum YAY! but the number however was a tad to high for my liking.

Do note that the string is written in all lower-case so I count both:

- `Something went wrong`
- `something went wrong`

As the same string.

If I do:

```shell
ag -c 'Something went wrong' | awk -F: '{s+=$2} END {print s}'
745
```

The number is lower, since the search becomes case-sensitive.

## Resources and References

- [GitHub repository](https://github.com/ggreer/the_silver_searcher)
