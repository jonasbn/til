# Sort Using jq

Some of the online tools you use emit a lot of data. `jq` is a true powertool for supporting your `curl`, ´http` (httpie) and dedicated ones.

Below is an example of `jq` use where the output is from `hub-tool` is sorted by last pulled date.

```shell
zsh> hub-tool tag ls jonasbn/github-action-spellcheck --format json | jq 'sort_by(.LastPulled)| reverse' | jq -S --raw-output '.[] | [.Name, .LastPulled] | @tsv'
jonasbn/github-action-spellcheck:0.23.0 2022-05-07T08:10:01.439973Z
jonasbn/github-action-spellcheck:0.23.1 2022-05-07T04:08:52.108901Z
jonasbn/github-action-spellcheck:0.23.2 2022-05-07T04:08:52.108901Z
jonasbn/github-action-spellcheck:latest 2022-05-07T04:08:52.108901Z
jonasbn/github-action-spellcheck:0.21.1 2022-05-06T22:37:26.587984Z
jonasbn/github-action-spellcheck:0.20.0 2022-05-06T17:32:42.68943Z
jonasbn/github-action-spellcheck:0.22.1 2022-05-04T08:11:38.567402Z
jonasbn/github-action-spellcheck:0.22.0 2022-05-04T07:34:23.267566Z
jonasbn/github-action-spellcheck:0.13.0 2022-04-29T17:04:41.597812Z
jonasbn/github-action-spellcheck:0.14.0 2022-04-29T17:04:41.597812Z
jonasbn/github-action-spellcheck:0.17.0 2022-03-26T16:53:51.628996Z
jonasbn/github-action-spellcheck:0.21.0 2022-01-25T07:18:17.937951Z
jonasbn/github-action-spellcheck:0.19.0 2022-01-24T17:19:15.623017Z
jonasbn/github-action-spellcheck:0.18.0 2021-12-18T19:03:53.941591Z
jonasbn/github-action-spellcheck:0.16.0 2021-10-14T19:05:33.111348Z
```

## Resources and References

- [Blog post: phpfog "Sorting JSON by Value with JQ"](https://phpfog.com/sorting-json-by-value-with-jq/)
- [jq manual](https://stedolan.github.io/jq/manual/#sort,sort_by(path_expression))
- [ServerFault: "jq sort by date (iso 8601)"](https://serverfault.com/questions/992406/jq-sort-by-date-iso-8601)
- [StackOverflow: "Use jq in Bash to sort object properties by descending length of their value"](https://stackoverflow.com/questions/51914316/use-jq-in-bash-to-sort-object-properties-by-descending-length-of-their-value)
