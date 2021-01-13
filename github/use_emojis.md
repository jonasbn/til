# Use emojis

You can use a lot of different emojis on GitHub :astonished:

This mean you can communicate using small icons :lollipop: :ok_hand:

It does work in [GitHub Wikis](https://github.com/jonasbn/til/wiki), but it does not necessarily render correctly in the HTML if you are using GitHub pages.

See [this example](http://jonasbn.github.io/til/github/use_emojis.html), which is the HTML rendering of this page, which is written in Markdown.

The solution to getting the emojis to render correctly is using the Jekyll plugin: `jemoji`.

Add the following to your site's Gemfile

```gemfile
gem 'jemoji'
```

And add the following to your site's _config.yml

```yaml
plugins:
  - jemoji
```

And then you will see your emojis rendered correctly in the HTML version, served under GitHub Pages.

## Resources and References

1. [GitHub: jemoji](https://github.com/jekyll/jemoji)
1. [Gist by @rzaviers containing all the emojis](https://gist.github.com/rxaviers/7360908)
