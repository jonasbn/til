# Use Bundler

1. `bundle init`
1. `bundle install`

First step generates a basic `Gemfile`

Second step generates a `Gemfile.lock`

I use the `Gemfile.lock` file for: `snyk` security code audit, meaning I monitor dependencies on GitHub, see my repository: [docker-cheatset](https://github.com/jonasbn/docker-cheatset).

## Resources and References

- [Bundler.io: "How to manage application dependencies with Bundler"](https://bundler.io/v2.2/guides/using_bundler_in_applications.html)
- [Blog post by Yehuda Katz: "Clarifying the Roles of the .gemspec and Gemfile"](https://yehudakatz.com/2010/12/16/clarifying-the-roles-of-the-gemspec-and-gemfile/)
