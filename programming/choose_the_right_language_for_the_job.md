# Choose the right language for the job

## Introduction

There are many programming languages, and they all have strengths and weaknesses.

Some languages are better suited for certain tasks than others which makes deciding hard. Talking about the language alone often ignore other aspects of the possible solution, like the tooling, the ecosystem, the community, the documentation, the support, the availability of libraries and so on.

I have created a small algorithm to guide decisions.

But lets just get some terms out of the way first.

- Boring stack
- Fun stack
- Best fit stack

The boring stack is the stack you know very well. You can focus on the problem area and not the language and tools.

The fun stack is the stack you want to learn and adopt. You can focus on the language and tooling and learn a new language and tools.

The _dark horse_ is the best fit stack. It is the stack that is best suited for the task at hand. It is the stack you should use, but it is not the stack you know or have the time to learn and adopt.

Consider these parameters when choosing a language (stack) for the problem at hand:

1. It is time critical? (delivery wise)
2. Is it a one-off or a long-term project?

### Example: Make a basic CLI tool

I am fairly proficient in **Perl** and I have been using it for several years. I have also been learning **Go** for a couple of years, but I am by no means as proficient in it as I am in **Go**.

I want to create a command line tool.

- It is a one-off task
- It is not time critical

I could use **Perl** for this task, but I want to learn **Go** and I have the time to do so.

I would choose **Go** for this task.

### Example: Crunch some statistics at work by Monday

I need to crunch some statistics at work. I have a lot of data and I need to do some calculations on it and it has to be delivered by Monday.

- It is a one-off task
- It is time critical

I could use **Go** for this task, since I want to learn **Go**, but I do not have the time to do so, so I choose **Perl** for this task, since I know it well.

Other parameters come into play, like:

- Is it for you alone?
- Is the proposed stack a good fit for a solution to the problem area?

If we look at some different languages and their strengths and weaknesses, we can see that some languages are better suited for certain tasks than others.

I have set up this list of languages and their strengths and weaknesses. based on my perspective and experience, so you should write one for yourself illustrating your perspective and experience.

| Language   | Strengths                                                                               | Weaknesses                                                                             | Stack        |
|------------|-----------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|--------------|
| C          | Very fast, low-level, compiled, familiar paradigm                                       | Hard to learn, insecure, complex tooling                                               | n00b         |
| JavaScript | Primarily aimed at web solutions, extensive libraries, interpreted                      | Slow, different paradigm                                                               | apprentice   |
| Python     | Good support for ML and AI, extensive libraries, interpreted                            | Slow, different paradigm                                                                                   | n00b         |
| Ruby       | Extensive libraries, good match for web based solutions, interpreted, familiar paradigm | Slow                                                                                   | n00b         |
| Perl       | Extensive libraries, good general purpose; interpreted                                  | Slow                                                                                   | Intermediate |
| PHP        | Extensive libraries, good match for web based solutions, interpreted, familiar paradigm | Slow                                                                                   | familiar     |
| Prolog     | Good for AI and expert systems                                                          | Hard to learn, different paradigm, not good for other tasks, compiled, complex tooling | n00b         |
| Go         | Fast, garbage collected, compiled, familiar paradigm                                    |                                                                                        | apprentice   |
| Rust       | Fast, garbage collected, compiled, secure                                               | Hard to learn                                                                          | n00b         |

## The algorithm

| Stack          | Good fit                                     | Bad fit                                               |
|----------------|----------------------------------------------|-------------------------------------------------------|
| Boring stack   | You know it, you can use it - do it          | You know it, you could use it - evaluate alternatives |
| Fun stack      | You want to learn it, you can use it - do it | You want to learn it, you should not use it           |
| Best fit stack | You can use it - do it                       | You can use it                                        |

## Pick between your boring and your fun stack

1. Is the task a one-off or a long-term project
   1. one-off:
        1. Is the solution time time-critical or the problem area complex
           1. Yes: choose a language you know - choose your boring stack, unless the problem area is complex, then choose best fit stack
           2. No: choose a language you want to learn - choose your fun stack or a best fit stack that you want to learn
   2. long-term: choose a language you know or have decided to adopt/learn
       1. Is the code going to be maintained by
           1. Yes: choose a language you know - choose your boring stack
           2. No: choose a language you want to learn - choose your fun stack

| Language   | Strengths                                             | Weaknesses                                                     |
|------------|-------------------------------------------------------|----------------------------------------------------------------|
| C          | Fast, low-level, portable                             | Difficult to learn, no built-in support for objects            |
| C++        | Fast, low-level, portable, object-oriented            | Difficult to learn, no built-in support for garbage collection |
| C#         | Fast, object-oriented, garbage collected, portable    | Difficult to learn, not as portable as Java                    |
| Java       | Fast, object-oriented, garbage collected, portable    | Difficult to learn, not as portable as C                       |
| JavaScript | Easy to learn, portable, built-in support for objects | Slow, not as portable as Java                                  |
| Python     | Easy to learn, portable, built-in support for objects | Slow, not as portable as Java                                  |
| Ruby       | Easy to learn, portable, built-in support for objects | Slow, not as portable as Java                                  |
| Perl       | Easy to learn, portable, built-in support for objects | Slow, not as portable as Java                                  |
| PHP        | Easy to learn, portable, built-in support for objects | Slow, not as portable as Java                                  |
| Prolog     | Good for artificial intelligence                      | Not good for other tasks                                       |
| Go         | Fast, object-oriented, garbage collected, portable    | Not as portable as Java                                        |

## Extending Your Boring Stack

## Resources and References

- [Go](../go/use_go.md)
- [Perl](../perl/use_perl.md)
- [Python](../python/use_python.md)
- [Ruby](../ruby/use_ruby.md)
