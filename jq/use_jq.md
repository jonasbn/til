# Use jq

`jq` is an JSON command-line processor.

Check: [jq GitHub repository][GITHUB]

You can use it to prettify your **JSON**

```shell
jq '.' < foo-ugly.json > foo-pretty.json
```

Tip from @chriswinters via Twitter

Or in conjuction with `curl`. A nifty alternative is **httpie** (`http`).

```shell
curl http://jsonplaceholder.typicode.com/posts/1 |jq
```

```json
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
```

Source used in example: `http://jsonplaceholder.typicode.com/`

You can with luck install `jq` via [Homebrew](http://brew.sh/).

`jq` however can do so much more, one of my colleagues requested a list of all of the postal codes in Denmark, these are available in a quite extensive data structure, but since we just needed the postal code, we needed to parse the data - `jq` to the rescue - inspired by this [blog post][JGALVAN] by Jesus Galvan, I knew I could get `jq` to do what I needed.

Example snippet of data structure:

```json
[
{
  "href": "https://api.dataforsyningen.dk/postnumre/1050",
  "nr": "1050",
  "navn": "København K",
  "stormodtageradresser": null,
  "bbox": [
    12.5841266,
    55.67871944,
    12.58827962,
    55.68185111
  ],
  "visueltcenter": [
    12.58600133,
    55.68065246
  ],
  "kommuner": [
    {
      "href": "https://api.dataforsyningen.dk/kommuner/0101",
      "kode": "0101",
      "navn": "København"
    }
  ],
  "ændret": "2018-04-30T15:23:13.528Z",
  "geo_ændret": "2014-11-04T16:01:00.879Z",
  "geo_version": 1,
  "dagi_id": "191050"
}, {
  "href": "https://api.dataforsyningen.dk/postnumre/1051",
  "nr": "1051",
  "navn": "København K",
  "stormodtageradresser": null,
  "bbox": [
    12.58727138,
    55.67873773,
    12.59417472,
    55.68095605
  ],
  "visueltcenter": [
    12.59022696,
...
```

I can recommend downloading the resource to a JSON file, when experimenting/developing, since it is easier to work with.

```shell
curl --output data.json https://api.dataforsyningen.dk/postnumre
```

So what we want to accomplish is to:

1. Extract data from an online resource
1. Extract only the postal codes, no JSON
1. And finally _teach my colleague to fish_

Result:

```shell
http https://api.dataforsyningen.dk/postnumre |jq --raw-output '.[] | .nr'
```

Se we have switched to **httpie** (`http`).

1. we pipe the data from the request to `jq`
2. we request that `jq` emit raw output via `--raw-output`
3. we interpret the data as an array using `.[]` and pipe it in `jq` context to the next match
4. we locate the key `nr`

```shell
zsh> http https://api.dataforsyningen.dk/postnumre |jq --raw-output '.[] | .nr' |head -n 20
1050
1051
1052
1053
1054
1055
1056
1057
1058
1059
1060
1061
1062
1063
1064
1065
1066
1067
1068
1069
```

## Resources and References

- [jq Website][WEBSITE]
- [jq playground][PLAYGROUND]
- [GitHub repository: jq][GITHUB]
- [Blog post by Jesus Galvan][JGALVAN]
- [Blog post by Ganest Chandrasekaran: "Parse JSON easily like a PRO"][GCHANDRASEKARAN]
- [Gist: jq cheatsheet](https://gist.github.com/olih/f7437fb6962fb3ee9fe95bda8d2c8fa4) a gist
- [LZone: jq cheatsheet](https://lzone.de/cheat-sheet/jq) some HTML
- [Zendesk: jq cheatsheet](https://developer.zendesk.com/documentation/integration-services/developer-guide/jq-cheat-sheet/) some good fundamental examples

[GITHUB]: https://github.com/stedolan/jq
[WEBSITE]: https://stedolan.github.io/jq/
[JGALVAN]: https://jsgv.io/blog/getting-started-with-jq/
[GCHANDRASEKARAN]: https://medium.com/analytics-vidhya/parse-json-easily-like-a-pro-9decef2fd132
[PLAYGROUND]: https://jqplay.org/
