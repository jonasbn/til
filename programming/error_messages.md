# Error Messages

Error messages should include sufficient information to identify the error and the context in which it occurred. The message should be clear and concise, and should be written in a way that is easy to understand by the user.

Additionally information about the error should be included if possible, such as:

- An unique error code, so the error point of origin can be identified in the code or documentation
- The error type or level indicating severity, such as `error`, `warning` or `notice`
- One or more keys to identify the object, data context involved in the error

## Bad Practices

### Ambiguous error messages

`An error occurred` is not helpful. It does not provide any information about the error, and does not help the user to understand what went wrong.

If extended with a unique error code, it would be more helpful, but still not sufficiently informative.

### Assumptions

A lot of error messages lack context since the error messages assumes that the user or consumer of the error message is familiar with the entire context or intrinsic details of the source code or implementation

## A guide for writing better error messages

Errors and exceptions should not happen, but they do. When they do, it is important to provide the user with a clear and concise error message that helps them understand what went wrong and how to fix it and how to get them back on track.

A thing that got me thinking was from the Hanselminutes podcast episode with Kathryn Grayson Nanz, where she talked about the importance of error messages and how they can be used to help the user understand what went wrong and how to fix it.

> Well and a lot of times I think the error message is a great one, right? A lot of times when you see the stuff that a developer has had to write, it means that you as a user have like fallen through their cracks somewhere. Something's gone wrong. And so not only are you now seeing the copy that the developer wrote, you're seeing it at a time when you probably need a little extra explaining or a little extra user friendliness to get you back on track. And those tend to be the kind of gaps where things get rough

- What happened?
- Why did it happen?
- Provide reassurance (if possible)
- Suggest a solution (if possible)
- Or a way out as a last resort

Error messages can be written in various forms based on the intended recipient or target audience, where regular users might need something along the lines of the above. A more technical audience, like your colleagues or similar possibly have more knowledge on context, architecture or source code, but they might be:

- New to the team or system
- Under a lot of stress, dealing with perhaps larger or many issues

So other parameters that you need to take into consideration

- What happened?
- When did it happen?
- Why did it happen/What was the trigger?
- Suggest a solution/suggest possible diagnostics if these cannot be part of the error message itself
  - Check permissions
  - Check availability
  - Check capacity

## Resources and References

- [Blog post: "When life gives you lemons, write better error messages" by Jenni Nadler](https://scribe.rip/when-life-gives-you-lemons-write-better-error-messages-46c5223e1a2f)
- [Podcast: "HanselMinutes Episode 941: Foundations of design for developers with Kathryn Grayson Nanz"](https://hanselminutes.com/941/foundations-of-design-for-developers-with-kathryn-grayson-nanz)
