# Installing Dependencies and Tools

Oftentimes you need additional components to get you software to build using GitHub Actions. I fell over this very informative [blog post by Edward Thomson][EDWARDT].

He gave the following example, which pretty much outlines some good example:

```yaml
name: CI

on: [push]

jobs:
  linux:
    runs-on: ubuntu-latest
    steps:
      - run: sudo apt-get install ninja-build
      - run: ninja --version

  windows:
    runs-on: windows-latest
    steps:
      - run: choco install ninja
      - run: ninja --version

  mac:
    runs-on: macos-latest
    steps:
      - run: brew install ninja
      - run: ninja --version
```

Example lifted from [blog post by Edward Thomson][EDWARDT].

Using the above approach I was able tweak a GitHub action build of my fork of the Perl distribution[DateTime::Astro](../cpan/install_datetime_astro.md).

```yaml
name: Dist::Zilla Action
on:
  push:

env:
  GMP_HOME: /usr
  MPFR_HOME: /usr

jobs:
  linux:
    runs-on: ubuntu-latest
    name: "CI"

    steps:
      - name: "Install C libraries for dependencies"
        run: sudo apt-get update && sudo apt-get install -y libmpfr-dev libgmp-dev cpanminus
      - name: "Checkout repository"
        uses: actions/checkout@v3
      - name: "Building and testing all"
        run: sudo cpanm --with-configure --installdeps . && perl Build.PL && ./Build && ./Build test
```

Example lifted from a branch [jonasbn/DateTime-Astro][ASTROGHA]

In addition to installing the required C libraries. I had to inform the build system of their presence, I did this using environment variables, following the [documentation from GitHub][ENV].

## Resources and References

- [Blog: Edward Thomson: "GitHub Actions Day 4: Installing Tools][EDWARDT]
- [GitHub fork of DateTime::Astro][ASTRO]
- [GitHub Actions: Environment Variables][ENV]

[EDWARDT]: https://www.edwardthomson.com/blog/github_actions_4_installing_tools.html
[ENV]: https://docs.github.com/en/actions/learn-github-actions/environment-variables
[ASTROGHA]: https://github.com/jonasbn/DateTime-Astro/blob/gha/.github/workflows/ci.yml
[ASTRO]: https://github.com/jonasbn/DateTime-Astro/
