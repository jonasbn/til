# Counting NULL and non-NULL values in a single query

I do not know why I had to look this up recently, it seemed like a scenario you would come across ever so often. Anyway, when you have a record set where you need to count something, where you assert that it either holds a value or the value `NULL`.

```sql
select sum(case when a is null then 1 else 0 end) count_nulls
     , count(a) count_not_nulls 
  from table;
```

Source: [StackOverflow](https://stackoverflow.com/questions/1271810/counting-null-and-non-null-values-in-a-single-query)
