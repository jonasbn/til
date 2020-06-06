# Emulate database schemas using SQLite

Attempting to emulate Oracle in *SQLite* is a daunting task, but you can accomplish some success. If you do not have "public synonyms" or use multiple schemas, you can emulate this in *SQLite* by attaching several databases or even the database itself using the following command:

```sql
attach database 'sqlite.db' as MYOTHERSCHEMA;
```

You can get an overview of your databases (schemas) using the command:

```sql
.databases
```

When attaching a secondary database, you might get this error message.

`"cannot ATTACH database within transaction"`

You need to wrap the actual attaching in a transaction and it will work

```sql
BEGIN; attach database 'othersqlite.db'; END;
```

## References

- ['Working With Attached Databases in SQLite'](http://sqlite.awardspace.info/syntax/sqlitepg12.htm)
