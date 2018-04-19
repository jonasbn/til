# See grants for specific user

If you want to see what grants a given user has been granted.

```sql
SELECT owner, table_name, select_priv, insert_priv, delete_priv, update_priv, references_priv, alter_priv, index_priv 
  FROM table_privileges
 WHERE grantee = <theUser>
 ORDER BY owner, table_name;
```

Source [StackOverflow](https://stackoverflow.com/questions/1298473/how-can-i-list-all-grants-a-user-received)

