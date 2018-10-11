# What is the difference between RUN and CMD

- `RUN` is an image build step and will be cached, a `Dockerfile` can have multiple build `RUN` steps
- `CMD` is a command execution and is the _endpoint_ of the `Dockerfile` processing and would execute the command you are building up to. A `Dockerfile` can only contain one `CMD`, see also `ENTRYPOINT` as an alternative.

## References

- [StackOverflow](https://stackoverflow.com/questions/37461868/whats-the-difference-between-run-and-cmd-in-a-docker-file-and-when-should-i-use)
