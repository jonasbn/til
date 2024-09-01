# Build Precompiled Binaries For Your Go Executables

One of the reasons why I love open source, is that you can see what other people are doing, you can read, learn and adopt.

One of the projects I am following had the following [PR](https://github.com/rakyll/gotest/pull/38/files). It was a proposal for building executables for multiple platforms and operating systems for your particular executable.

Since I am currently learning Go and I am building some small utilities, which happen to be executables. I decided to see if I could use this in my projects.

First file `.github/workflows/release.yml`:

```yaml
name: goreleaser

on:
  push:
    tags:
      - 'v*'

jobs:
  goreleaser:
    runs-on: ubuntu-latest
    steps:
      -
        name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
      -
        name: Set up Go
        uses: actions/setup-go@v2
        with:
          go-version: 1.14
      -
        name: Run GoReleaser
        uses: goreleaser/goreleaser-action@v2
        with:
          version: latest
          args: release
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

It checkouts the code when a repository is tagged and the tag is prefixed with `v`, meaning we can still do tags, which should not result in a build related to a release.

The `GITHUB_TOKEN` used by the build is [auto-generated][GITHUBDOCS], so you do not have to do anything.

The workflow uses an action for **goreleaser** which is available on the GitHub Marketplace.

Do note the `fetch-depth: 0` option, this is used to ensure that all commits are fetched, so the build can be based on the latest commit.

> IMPORTANT: note the fetch-depth: 0 input in Checkout step. It is required for the changelog to work correctly.
>

REF: [GitHub Marketplace: goreleaser][GORELEASER]

Next up is the configuration for **goreleaser**.

Second file `.goreleaser.yml`:

```yaml
builds:
  - env:
      - CGO_ENABLED=0
    goos:
      - linux
      - windows
      - darwin
archives:
  - format: binary
    replacements:
      darwin: Darwin
      linux: Linux
      windows: Windows
      386: i386
      amd64: x86_64
checksum:
  name_template: 'checksums.txt'
```

If you want to see the above put to use go to [my repository](https://github.com/jonasbn/punycode), check the releases and see the impressive list.

## Resources and References

1. [GitHub Marketplace: goreleaser][GORELEASER]
1. [GitHub Docs: Automatic Token Authentication][GITHUBDOCS]

[GITHUBDOCS]: https://docs.github.com/en/actions/security-guides/automatic-token-authentication#about-the-github_token-secret
[GORELEASER]: https://github.com/marketplace/actions/goreleaser-action
