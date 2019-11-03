# Setting the date format

The reason why I wrote this _til_ is because it took me some time to hunt down and I might forget how to do it.

1. From Oracle SQL Developer's menu go to: "Tools" > "Preferences"
1. From the "Preferences" dialog, select: "Database" > "NLS" from the left panel
1. From the list of NLS parameters, enter `RRRR-MM-DD HH24:MI:SS` into the "Date Format" field.
1. Save and close the dialog - done!

My suggestion is using ISO 8601 format, but you can change to you preferences, do visit [this page at the Oracle Help Center][oracle_help_center] for more details.

## References

- [StackOverflow](http://stackoverflow.com/questions/8134493/how-can-i-set-a-custom-date-time-format-in-oracle-sql-developer)
- [Oracle Help Center][oracle_help_center]
- [Wikipedia: ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)

[oracle_help_center]: https://docs.oracle.com/cd/E11882_01/server.112/e41084/sql_elements004.htm#SQLRF00212
