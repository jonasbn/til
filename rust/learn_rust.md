# Learning Rust

I was evaluating whether to attempt to learn **Go** or **Rust** an decided to check out **Rust** first. At the time of writing this is very much _work in progress_, but I can however shed some light on the resources I have found and the process I am following in picking up **Rust**.

The Rust language is well documented the plethora of different resources at times it is a tad difficult to decide on what resource to use. The main resource is of course [The Rust Programming Language website](https://www.rust-lang.org/en-US/), which hosts the book: "[The Rust Programming Language Book](https://doc.rust-lang.org/book/2018-edition/foreword.html)". The 2018 Edition at the time of writing, you might find links to older editions when _googling_, but the pages are often referring to newer editions when and where possible and update has been made.

You can generate a local version if you have **Rust** installed and the following command does all the work including opening the book in your default browser:

```bash
$ rustup docs --book
```

From the website you can also find "[Rust by Example](https://doc.rust-lang.org/rust-by-example/index.html)" with a lot of useful examples and a pragmatic approach.

Well I decided to start with a paid video course "[Rust in Motion](https://www.manning.com/livevideo/rust-in-motion)" from Manning. It is by [@Carol Nichols](https://twitter.com/carols10cents) and [@Jake Goulding](https://twitter.com/JakeGoulding). The video course is recommended, there are free previews for you to get an insight to the form and contents of the course and the [example source code is available online](https://github.com/integer32llc/rust-in-motion-videos).

In addition to following the course and using the resources mentioned above I use [Codewars.com](https://www.codewars.com/). Codewars offers small coding challenges grouped by difficulty and organized as Katas, it's is like the small exercises you sometimes find in technical books at the end of a chapter - anyways the Katas are plenty and from a variety of different authors and give a great variation in problems and challenges.

My process with the Katas is currently doing one at a time. I then use the above mentioned resources to get an understanding to come up with a working solution in **Rust**. I am still at the 8th. kyo (the lowest) on **Rust**, but I am having a lot of fun.

Earlier I wrote up a TIL/blog post on [setting up a **Rust** development environment](setting_up_a_rust_dev_env.md) ([dev.to](https://dev.to/jonasbn/til-setting-up-a-rust-development-environment-2f95)). So when I go over the Katas (or other programming assignments for that matter), I get extensive feedback from my development environment, this leads me to looking up extensively in the **Rust** [standard documentation](https://doc.rust-lang.org/std/) and my own repository of completed Katas and **Rust** examples, no matter where you get your assignments from the process is somewhat the same.

When I occassionally run into a challenge, which is taking too much time or it requires additional _thinking_/_showering_/_sleeping_, I skip to another and then return _wiser_ and more _experienced_ in **Rust**.

The **Rust** toolchain is very informative and I have heard many speak highly of the level of the error messages emitted by the compiler. Which leads me to [the list of **Rust** compiler errors](https://doc.rust-lang.org/error-index.html).

Alternatively you can use the compiler itself:

```bash
$ rustc --explain E0200
```

There are other resources like [Codewars.com](https://www.codewars.com/) and recommendations are most welcome, But if you are not so much into the Kata things and displaying your solutions publicly I can recommend [@Carol Nichols](https://twitter.com/carols10cents) "[Rustlings](https://github.com/rust-lang/rustlings/)".

I have never seen anything like **Rustlings** before, it is a GitHub project organized as a chain of error prone pieces of code organized as build, every time you get a step to compile you move on to the text - it totally feels like a game. I can however offer a small tip without spoiling anything. Do READ the displayed error, since when you get a step to compile, it automatically moves on to the next assignment and sometimes you do not see that you have succeeded and should evaluate a new piece of code.

If you run into some more _sticky_ **Rust** code [@Jake Goulding](https://twitter.com/JakeGoulding) has made [an online playground](https://play.rust-lang.org/) ([REPL](https://en.wikipedia.org/wiki/REPL)).

Finally I can recommend IRC for **Rust** assistance, but unfortunately [it is being decommissioned at some point in the future](https://blog.rust-lang.org/2019/04/26/Mozilla-IRC-Sunset-and-the-Rust-Channel.html). There are also **Rust** user groups, my local groups is [Copenhagen Rust Group](http://cph.rs/), I have not yet attended a meetup, but I would love to go to one of the hack nights to boost my **Rust** learning.

As a small extra bonus, I can present you to a resource just _rediscovered_ a [Cheat Sheet](https://cheats.rs/), I had bookmarked, but forgot to put to use - it looks incredibly impressive and hope to put it to good use.

Have fun with your **Rust** adventure and please send me recommendations for **Rust** learing resources if you have any you think would benefit my **Rust** endeavour.

As an _extra-extra bonus_, I can recommend the article ["A half-hour to learn Rust"][halfhour] getting to learn to **read Rust** is _hard_, this article is a pearl.

Good luck and stay _safe_ (intended Rust pun)...

## Resources

- [The Rust Programming Language](https://www.rust-lang.org/en-US/)
- [The Rust Programming Language Book](https://doc.rust-lang.org/book/2018-edition/foreword.html) 2018 Edition
- [Rust by Example](https://doc.rust-lang.org/rust-by-example/index.html)
- [Rust Playground](https://play.rust-lang.org/)
- [Official Rust learning resources](https://learning-rust.github.io/)
- [Additional Rust learning resources](https://github.com/ctjhoa/rust-learning)
- [Collection of Rust Resources](https://github.com/rust-unofficial/awesome-rust)
- [Codewars.com](https://www.codewars.com/)
- [Rust Standard Documentation](https://doc.rust-lang.org/std/)
- [Rust Cheat Sheet](https://cheats.rs/)
- [Rustlings](https://github.com/rust-lang/rustlings/)
- ["A half-hour to learn Rust"][halfhour]

[halfhour]: https://fasterthanli.me/blog/2020/a-half-hour-to-learn-rust/
