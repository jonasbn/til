# Find Timezones

I can never remember the different timezone designations, this is one approach to find them.

```shell
find  /var/db/timezone/tz/2022g.1.0/zoneinfo/ -type f | perl -p -e 's/.*\/([\w-]*)\/([\w-+]*)$/$1\/$2/' | sort -u
```

## Resources and References

- [Unix StackExchange: "How to list timezones known to the system?"](https://unix.stackexchange.com/questions/504043/how-to-list-timezones-known-to-the-system?utm_source=pocket_saves)
