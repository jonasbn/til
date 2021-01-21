# Use emojis

You can use a lot of different emojis on GitHub :astonished:

This mean you can communicate using small icons :lollipop: :ok_hand:

It works in [GitHub Wikis](https://github.com/jonasbn/til/wiki), but it does not necessarily render correctly in the HTML if you are using GitHub pages.

See [this example](http://jonasbn.github.io/til/github/use_emojis.html), which is the HTML rendering of this page, which is written in Markdown.

The solution to getting the emojis to render correctly is using the Jekyll plugin: `jemoji`.

Add the following to your site's `Gemfile`

```gemfile
gem 'jemoji'
```

And add the following to your site's `_config.yml`

```yaml
plugins:
  - jemoji
```

And then you will see your emojis rendered correctly in the HTML version served under GitHub Pages, based on your Markdown, where you can specify emojis as `:awesome:`

Do note that GitHub uses it's own CDN (`https://github.githubassets.com`), as mentioned in the [jemoji documentation][gh_jemoji].

This mean that you cannot see the result locally, when testing your GitHub pages rendering as HTML.

```bash
$ bundle exec jekyll serve --incremental
```

Luckily there is a remedy as hinted at in the [jemoji documentation][gh_jemoji], using another package called [gemoji][gh_emoji].

## Local Use

As hinted at in the [jemoji documentation][gh_jemoji], via using [gemoji][gh_emoji].

Do note that this is not included in the [gemoji][gh_emoji] on GitHub, but on [Rubydocs][rubydoc].

```bash
$ gem install gemoji
$ bundle exec gemoji extract assets/images/emoji
```

And you should get a directory structure like this. This of course integrates with my setup and your file structure might be different, this however is compatible with GitHub pages.

```bash
$ exa -D --tree assets/
assets
└── images
   └── emoji
      └── unicode
```

If you do not use `exa`, but `tree`:

```bash
$ tree -d assets/
assets/
└── images
    └── emoji
        └── unicode
```

If you do not use `exa` or `tree`, but `find`:

```bash
$ find assets -type d
assets
assets/images
assets/images/emoji
assets/images/emoji/unicode
```

Finally you specify the new directory to use when rendering locally in the `_config.yml`.

```yaml
plugins:
  - jemoji

emoji:
  src: "/assets/images"
```

And your should be good to go:

```bash
$ bundle exec jekyll serve --incremental
```

I am excluding the generated directory from being published to GitHub and I am not including the `emoji` section in the `_config.yml`.

I have no clue if the setting _clashes_ with the use of the GitHub CDN and it will require some more experimentation at some point.
## Resources and References

1. [GitHub: jemoji][gh_jemoji]
1. [GitHub: gemoji][gh_gemoji]
1. [RubyDoc: gemoji][rubydoc]
1. [Gist by @rzaviers containing all the emojis](https://gist.github.com/rxaviers/7360908)

[gh_jemoji]: https://github.com/jekyll/jemoji
[gh_gemoji]: https://github.com/github/gemoji
[rubydoc]: https://www.rubydoc.info/gems/gemoji/3.0.1
