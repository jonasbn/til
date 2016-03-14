# Setting the prompt

Tweaking the Postgresql commandline utility `psql` prompt can be quite useful.

Experiment with in `psql`

```
\set PROMPT1 '(%n@%m) [%/]> 
```

Rendering:

```
(jonasbn@[local]) [mydb]> 
```

When satisfied, put this in your `.psqlrc`.

In addition you can set transactional state in the prompt, following this [tip](http://sql-info.de/postgresql/notes/transaction-status-in-the-psql-prompt.html) (examples lifed from the referenced resource).

```
\set PROMPT1 '%/%R%x%# '
```

Starting a transaction will render (note the asterisk):

```
test=> BEGIN;
BEGIN
test=*>
```

Committing the transaction will render:

```
test=*> COMMIT;
COMMIT
test=>
```

So in combination you could do;

```
\set PROMPT1 '(%n@%m) [%/]%x> '
```

Rendering (for open transaction):

```
(jonasbn@[local]) [mydb]*> 
```

[Source: SQL-info](http://sql-info.de/postgresql/notes/transaction-status-in-the-psql-prompt.html)

More information on `psql` can be found at: [http://www.postgresql.org/docs/current/static/app-psql.html](http://www.postgresql.org/docs/current/static/app-psql.html)
