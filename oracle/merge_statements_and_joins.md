# Constructing A Range Of Dates

Oracle offers a way to do execute conditional `insert`/`update` statements. This merge statement can be quite useful. I used is for updating a role map.

Let's say you have a map of your roles, layed out like this in your database:

| Admin   | Role      | Resource |
| ------- |:---------:| --------:|
| Alice   | primary   | A |
| Bob     | secondary | A |
| Alice   | primary   | B |
| Alice   | secondary | B |
| Bob     | primary   | C |
| Alice   | secondary | C |
| Jones   | primary   | D |
| Alice   | secondary | D |

Now you want to make Bob, secondary for all resources, except the ones where

```sql
MERGE INTO domain_users du
USING (
  select userid, domain from domain_users where userrole = 'R' and domain in  'zoolinks.dk') o
ON (du.domain = o.domain)
WHEN MATCHED THEN
  UPDATE SET du.userid = o.userid, modifiedby = 'JONASBN', modifieddate = sysdate where userrole = 'B' and userid = 'IG15-DK'
```

## References

- [PSOUG](http://psoug.org/reference/merge.html), one of the better examples I dug up, but please note the terms and conditions[TOS](http://psoug.org/w3c/tos.htm)
- [StackOverflow](http://stackoverflow.com/questions/12274156/oracle-merge-vs-select-then-insert-or-update), an answer on the question on when to use merge vs. multiple statements
