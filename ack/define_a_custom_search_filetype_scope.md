# Define a custom search filetype scope

For `ack` you can defined custom filetype scopes for your projects.

If you for have a **Mojolicious** project consisting of:

- Perl files: `.pm`, `.pl`, `.t`,
- Javascript files: `.js`
- CSS files: `.css`
- Template files: `.ep`
- Configuration files: `.conf`

In your `$HOME/.ackrc`, insert the line: `--type-set=mojo=.css,.pl,.pm,.html,.js,.ep,.conf`

This mean you can `ack` across your complete project in the above file types avoiding logfiles etc.

`$ ack --mojo session`

Provides results accross the above filetypes.

`$ ack --mojo session --ignore-dir local`

Provides results accross the above filetypes, ignoring the `local/` directory populated by `carton`.
