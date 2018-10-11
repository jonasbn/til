# Defaulting to now for date

It can be useful to have dates default to _now_ when inserting records.

```sql
CREATE TABLE test (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  t TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## References

- ['StackOverflow'](https://stackoverflow.com/questions/200309/sqlite-database-default-time-value-now#200329)
