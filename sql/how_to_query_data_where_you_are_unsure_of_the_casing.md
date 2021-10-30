# How to query data where you are unsure of the casing

I often run into the problem of querying for example company names and they can be expressed in a variety of ways.

So I found this example:

```sql
where lower(col1) like lower('your_value%')
```

So what I need to do is something a long the lines of:

```sql
select * from company where lower(name) like lower('CompanyName%');
```

## Resources and References

1. [Oracle Communities: "LIKE case insensitivity"](https://community.oracle.com/tech/developers/discussion/597574/like-case-insensitivity?utm_source=pocket_mylist)
