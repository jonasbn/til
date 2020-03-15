# Opening files in applications from the command line

Editors SublimeText and Textmate come with nice CLI integration, ActiveStates Komodo does not, but it is not hard to achieve some level of integration.

The `open` command is great, you can actually open files or directories like so for the Komodo IDE:

```bash
% open -a /Applications/Komodo\ IDE\ 8.app/ <some file or directory>
```

The trick actually came from a tip on how to attach a file to an email for sending via Apple's **Mail.app**. Please see [the TIL on Mail.app](../mailapp/mail_file_from_cli.md)
