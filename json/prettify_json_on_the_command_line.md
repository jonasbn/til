# Prettify JSON on the command line

I have experienced getting a huge JSON file and when I opened op in Visual Studio Code, it would complain and disable all the nifty JSON tools, like pretty printing etc.

Luckily making a pretty version on the command line is possible, without any _complaints_. This can be done using `jq`.

```bash
cat file.json | jq . > prettyfile.json
```

Example JSON (_non-pretty_):

```json
{"glossary":{"title":"example glossary","GlossDiv": {"title": "S","GlossList": {"GlossEntry": {"ID": "SGML","SortAs": "SGML","GlossTerm": "Standard Generalized Markup Language","Acronym": "SGML","Abbrev": "ISO 8879:1986","GlossDef": {"para": "A meta-markup language, used to create markup languages such as DocBook.","GlossSeeAlso": ["GML", "XML"]},"GlossSee": "markup"}}}}}
```

[Example lifted from json.org](https://json.org/example.html)

Example JSON (_pretty_), after `jq` clean up:

```json
{
  "glossary": {
    "title": "example glossary",
    "GlossDiv": {
      "title": "S",
      "GlossList": {
        "GlossEntry": {
          "ID": "SGML",
          "SortAs": "SGML",
          "GlossTerm": "Standard Generalized Markup Language",
          "Acronym": "SGML",
          "Abbrev": "ISO 8879:1986",
          "GlossDef": {
            "para": "A meta-markup language, used to create markup languages such as DocBook.",
            "GlossSeeAlso": [
              "GML",
              "XML"
            ]
          },
          "GlossSee": "markup"
        }
      }
    }
  }
}
```

## Resources and References

1. [StackExchange: "Is there a CLI tool that would prettify a JSON string"](https://unix.stackexchange.com/questions/210514/is-there-a-cli-tool-that-would-prettify-a-json-string)
2. [json.org](https://json.org/example.html)
