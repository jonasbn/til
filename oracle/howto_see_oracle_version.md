# How to see what version of Oracle you are using

```sql
select * from v$version where banner like 'Oracle%';
```

## References

- [Source](http://www.mydigitallife.info/check-oracle-version/)
