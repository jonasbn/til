# See What a Record Looked Like

In Oracle you can retrieve a record in the past, when it has changed:

```sql
SELECT * FROM contributors
AS OF TIMESTAMP
TO_TIMESTAMP('1972-01-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS')
WHERE handle = 'jonasbn';
```

## Resources and References

1. [Oracle Docs](https://docs.oracle.com/cd/E11882_01/appdev.112/e41502/adfns_flashback.htm#ADFNS618)
