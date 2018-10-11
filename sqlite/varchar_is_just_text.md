# VARCHAR is just text

VARCHAR specifications are accepted by **SQLite**, but do note that these are just regarded as `TEXT`.

> SQLite does not enforce the length of a VARCHAR. You can declare a VARCHAR(10) and SQLite will be happy to store a 500-million character string there. And it will keep all 500-million characters intact. Your content is never truncated. SQLite understands the column type of "VARCHAR(N)" to be the same as "TEXT", regardless of the value of N.

## References

- [SQLite FAQ](https://sqlite.org/faq.html#q9)
