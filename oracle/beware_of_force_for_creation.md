# Beware of using force when creating objects

I got bitten by this particular issue the other day. When I am attempting to create a basic view:

```sql
CREATE OR REPLACE FORCE VIEW "MY_SCHEMA"."MY_VIEW" AS
SELECT mydata from mytable;
```

And I get the following error:

```sql
Error report:
SQL Command: CREATE OR REPLACE VIEW
Failed: Warning: execution completed with warning
```

There was an issue with the SQL and I tried to do a show error.

```sql
show error;
No Errors.
```

Inspecting the object status only revealed that it was invalid.

```sql
select * from user_objects where object_name = 'MY_SCHEMA';
```

I read up on force and decided to try to remove it and I got the error:

```sql
CREATE OR REPLACE VIEW "MY_SCHEMA"."MY_VIEW" AS
SELECT mydata from mytable;
Error report:
SQL Error: ORA-00998: must name this expression with a column alias
00998. 00000 -  "must name this expression with a column alias"
```

I looked up the error: http://ora-00998.ora-code.com/

And the fix is easy:

```sql
CREATE OR REPLACE VIEW "MY_SCHEMA"."MY_VIEW" ("mydata") AS
SELECT mydata from mytable;
```

Lesson learned. Beware when you use force for creation of objects.
