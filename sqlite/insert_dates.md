# Inserting Dates

Inserting dates can be tricky, since it looks as if thing are okay when you are using strings. You have to use the format: `yyyy-MM-dd HH:mm:ss` (you can leave out the time-part AFAIK).

```sql
insert into musicians (name, inactivedate) values ('David Bowie', '2016-01-10');
insert into musicians (name, inactivedate) values ('Prince Rogers Nelson', '2016-04-21');
insert into musicians (name, inactivedate) values ('Elvis Presley', null);
```

## References

- ['StackOverflow'](http://stackoverflow.com/questions/1933720/how-do-i-insert-datetime-value-into-a-sqlite-database/39171103)
