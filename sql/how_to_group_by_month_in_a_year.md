# How to group by month in a year

Sometimes you are requested to give a swift overview or statistic of how something evolves (or devolves) over time.

This query uses **Oracle** specific syntax, but this overall structure should be applicable in other SQL dialects.

```sql
select to_char(DATE_CREATED, 'YYYY-MM'), sum(something_we_can_count_on)
from our_table
group by to_char(DATE_CREATED, 'YYYY-MM')
order by 1
```

## References

- [StackOverflow](https://stackoverflow.com/questions/11531785/how-to-query-group-by-month-in-a-year)
