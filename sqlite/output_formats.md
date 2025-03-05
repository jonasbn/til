# Output Formats

You can set the format output mode of the SQLite CLI client:

```
   MODE is one of:
     ascii       Columns/rows delimited by 0x1F and 0x1E
     box         Tables using unicode box-drawing characters
     csv         Comma-separated values
     column      Output in columns.  (See .width)
     html        HTML <table> code
     insert      SQL insert statements for TABLE
     json        Results in a JSON array
     line        One value per line
     list        Values delimited by "|"
     markdown    Markdown table format
     qbox        Shorthand for "box --width 60 --quote"
     quote       Escape answers as for SQL
     table       ASCII-art table
     tabs        Tab-separated values
     tcl         TCL list elements
```

I currently prefer.

- `.mode box`

And if you want your choice to be the default do check my TIL: ["Use a Configuration File"](sqlite/use_config_file.md)

## Resources and References

- [StackOverflow: "How to change the format of select output (SQLite)"](https://stackoverflow.com/questions/72272830/how-to-change-the-format-of-select-output-sqlite)
