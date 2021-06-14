# Use pre-commit

The use of hooks in **Git** has fascinated me for a long time, but I have never gotten around do doing something _awesome_ with this readily available tool. My very basic experiments has fallen victim to not fully getting it running or administration of hooks.

The other day I was listening to the [Test & Code podcast][TESTANDCODE], which had a guest: Anthony Sottile ([@codewithanthony](https://twitter.com/codewithanthony)) who presented a framework for working with Git hooks, named: **pre-commit**.

A tool sounding like it offers exactly what I need...

This is lifted from [the website of the pre-commit framework][WEBSITE] to give you a picture

> As we created more libraries and projects we recognized that sharing our pre-commit hooks across projects is painful.
> We copied and pasted unwieldy bash scripts from project to project and had to manually change the hooks to work for
> different project structures.

And believe me this is a easy as _1-2-3_.

The framework is installed on you local machine together with your hooks, but you can configure their use on a repository-by-repository basis as they are actually installed per repository.

What really got me excited was the sheer number of [different hooks][HOOKS] and many of the hooks support or use existing parts of my toolchain, like:

- Perl, `perltidy` and `perlcritic` ([henryykt/pre-commit-perl](https://github.com/henryykt/pre-commit-perl))
- Markdown, `markdownlint-cli` ([igorshubovych/markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli))
- XML, `xmllint` ([pre-commit](https://github.com/pre-commit/pre-commit-hooks))
- JSON ([pre-commit](https://github.com/pre-commit/pre-commit-hooks))
- YAML ([pre-commit](https://github.com/pre-commit/pre-commit-hooks))
- GitHub configurations ([sirosen/check-jsonschema](https://github.com/sirosen/check-jsonschema))

And I discovered some, which I had on my TODO list to evaluate:

- `shellcheck` ([jumanjihouse/pre-commit-hooks](https://github.com/jumanjihouse/pre-commit-hooks))

And finally I discovered some tools I did not know at all:

- `shfmt` ([jumanjihouse/pre-commit-hooks](https://github.com/jumanjihouse/pre-commit-hooks))

And believe there are many [more][HOOKS]...

## Getting Started

Now I will demonstrate how easy it is go getting started

### 1. Install

When you have `pre-commit` installed (please refer to the [website][WEBSITE] for details, I simply installed from **Homebrew**, both on macOS and in WSL).

```bash
$ brew install pre-commit
```

You might platform might require a different approach and good thing is that there are options to choose from.

### 2. Configure

You can _copy-paste_ from other repositories or from [the website][WEBSITE].

Or you can get a skeleton configuration to get you started from `pre-commit` itself.

```bash
$ pre-commit sample-config
# See https://pre-commit.com for more information
# See https://pre-commit.com/hooks.html for more hooks
repos:
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v3.2.0
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml
    -   id: check-added-large-files
```

Let's write the above configuration into a `pre-commit` configuration file, which can commit to our repository.

```bash
$ pre-commit sample-config > .pre-commit-config.yaml
```

The filename is uniform, so you can easily do a search on GitHub for examples and inspiration.

### 3. Test

The hooks can be for pre-commits or whatever phase you decide you want to handle, but you can actually test without committing, which is really useful for and when getting started.

```
$ pre-commit run  --all-files
[INFO] Initializing environment for https://github.com/pre-commit/pre-commit-hooks.
[INFO] Installing environment for https://github.com/pre-commit/pre-commit-hooks.
[INFO] Once installed this environment will be reused.
[INFO] This may take a few minutes...
Trim Trailing Whitespace.................................................Failed
- hook id: trailing-whitespace
- exit code: 1
- files were modified by this hook

Fixing MANIFEST.SKIP
Fixing .github/dependabot.yml

Fix End of Files.........................................................Failed
- hook id: end-of-file-fixer
- exit code: 1
- files were modified by this hook

Fixing _config.yml
Fixing .github/dependabot.yml

Check Yaml...............................................................Passed
Check for added large files..............................................Passed
```

If this was a commit it would not go through. If you however was in a situation where you wanted the commit to go through `git` has the option `--no-verify` or `-n` to do exactly that.

So you can always do:

```bash
$ git commit -n iceberg_data.json -m "Latest data on icebergs"
```

`pre-commit` is not a part of our toolchain for this repository and we are ready to _Go!_

## Use

Now you have to consider a few things when forming a strategy for use of `pre-commit`. this is founded in why I have been reluctant to using pre-commit hooks.

1. The hooks should not _slow you down_

    - I actually think that pre-commit is pretty fast, but the more evaluation you stack up, I expect it will eventually become slower

    - You can override the blocking behaviour as demonstrated above with `--no-verify` / `-n`

1. The hooks you use, bring you feedback and value

    - Use only hooks that you need, the moment you can see that you often override them for pushing through commits it is time for them to go

    - The pre-commit hooks are installed in a non-intrusive manner, they are for you not necessarily your collaborators or colleagues, but the configuration is in the repository, so it not stopping them from using same configuration - do note the configuration is therefor a bit intrusive if you cannot decide on a common configuration

1. The hooks are a supplement to your CI

    - pick hooks that give your _fast actionable feedback_ and perhaps you can remove steps from your CI configuration and speed that up

    - Remember that CI helps you with PRs etc. coming from others non-necessarily using `pre-commit`, so it is a supplement

1. A subset of hooks alter contents

    - Do note that some hooks alter contents of files. These are the hooks that do formatting and beautification etc.

    - If you are in a collaborative setting, use these hooks with caution and see to that you agree on formatting/use, so you do not end up in, _tabs vs. spaces_ like discussions

    - Make sure that your diffs can be read and are useful, formatting should not be _obfuscation_, format for readability

## Maintenance

Maintenance of hooks is just as easy as installing and using. Jump into your repository directory.

```bash
$ cd til
$ pre-commit autoupdate
Updating https://github.com/pre-commit/pre-commit-hooks ... [INFO] Initializing environment for https://github.com/pre-commit/pre-commit-hooks.
updating v2.3.0 -> v4.0.1.
Updating https://github.com/igorshubovych/markdownlint-cli ... already up to date.
```

## Next steps

In addition to using all of the existing and marvelous hooks you can write your own.

I have just started on [a hook][MYHOOKS] myself, to remind me not to commit directly to `main` (`master`), but I can always overwrite you know.

If your hook offers something awesome, remember to share it a get it added to [the listing][HOOKS] so others can check it out and put it to use.

I did a lot of experiments with using my experimental hook from another repository, so it required some early releases and quite a few before I got it working. `pre-commit` does however offer a lot of testing facilities, I discovered afterwards.

Have fun and keep committing, now in style and hopefully with fewer stupid mistakes

## Resources and References

1. [pre-commit.com][WEBSITE]
1. [pre-commit.com: Listing of hooks][HOOKS]
1. [Test & Code Podcast][TESTANDCODE]
1. [Test & Code Podcast: Episode 157][EPISODE157]
1. [jonasbn/pre-commit-hooks][MYHOOKS]

[WEBSITE]: https://pre-commit.com/
[HOOKS]: https://pre-commit.com/hooks.html
[TESTANDCODE]: https://testandcode.com/
[EPISODE157]: https://testandcode.com/157
[MYHOOKS]: https://github.com/jonasbn/pre-commit-hooks
