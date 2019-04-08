# What is an empty parens?

I was reading some **Rust** [documentation](https://tokio.rs/docs/futures/overview/) on _futures_ and I fell over something I found pretty unclear.

> A timeout. When time is up, the future is completed, and its value is ().

The page was an overview, so I found it confusing the all of a sudden a reference code was included, since all of the other examples where on a higher abstraction level.

> - A database query, when the query finishes, the future is completed, and its value is the result  of the query.
> - An RPC invocation to a server. When the server replies, the future is completed, and its value is the server’s response.
> - A timeout. When time is up, the future is completed, and its value is ().
> - A long-running CPU-intensive task, running on a thread pool. When the task finishes, the future is completed, and its value is the return value of the task.
> - Reading bytes from a socket. When the bytes are ready, the future is completed – and depending on the buffering strategy, the bytes might be returned directly, or written as a side-effect into some existing buffer.

Luckily I am not the only one who have wondered about this and I found [a good response to a question]((https://stackoverflow.com/questions/31107614/what-does-an-empty-set-of-parentheses-mean-when-used-in-a-generic-type-declarati)) on **StackOverflow**.

> () is an empty tuple, a simple zero-sized type (it uses no memory) with only one value possible, (). It’s also known as the unit type. Its use in a return type of Result<(), E> means “if nothing goes wrong, there’s no further value produced”. The semantics are what’s important—the call was OK.

So the empty parethesis is a empty `tuple`, called `Unit`, in **Rust** with the following characteristics:

- It has zero cost memory-wise
- It is referred to as: "unit", "the unit type" or "nil"
- It resembles `void`, `null`, `undef` in other languages

A `tuple` is a [primitive type: Unit](https://doc.rust-lang.org/std/primitive.unit.html) in **Rust**

## References

- [StackOverflow: What does an empty set of parentheses mean when used in a generic type declaration?](https://stackoverflow.com/questions/31107614/what-does-an-empty-set-of-parentheses-mean-when-used-in-a-generic-type-declarati)
- [tokio.rs: Overview on futures in the Tokio crate documentation](https://tokio.rs/docs/futures/overview/)
- [Rust Cheatsheet](https://cheats.rs/)
- [Rust primitive type: Unit](https://doc.rust-lang.org/std/primitive.unit.html)
- [Rust documentation: Tuple](https://doc.rust-lang.org/reference/types/tuple.html)
