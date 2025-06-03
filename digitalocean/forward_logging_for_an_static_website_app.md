# Forward Logging for an static website app

According to the documentation and the settings this should be possible, I could not get it to work.

At the same time I do not understand how it should work, if it is a static website, not a proper application, with a server side component.

Anyway I found this workaround.

At Better Stack, previously logtail. I set up a source.

Copied the token and the ingress URL.

I added the JavaScript component:

- [@logtail/node](https://www.npmjs.com/package/@logtail/node)

This is outlined in this [guide][betterstack], the section on: "Browser only" - and it works like a charm. You of course have to implement some relevant logging like:

- `Application event: app_mounted`
- various errors if any
- integrations to the outside, that do not work

## Resources and References

- [BetterStack: "JavaScript quick start guide"][]

[betterstack]: https://betterstack.com/docs/logs/javascript/install/#logging-from-browser
