# Use renovate

**Renovate**  is a very powerful alternative to **Dependabot** which reaches beyond GitHub.

I had it recommended, but I have only just scratched the surface of what it can do. Do note I am a very happy user of **Dependabot**.

One of the areas Dependabot does not handle is my other favorite tools: **pre-commit** and **Perl** (`cpanfile`), **Renovate** supports these via separate managers.

My configuration (`renovate.json`) looks as follows:

```json
{
  "extends": [
    "config:base"
  ],
  "pre-commit": {
    "enabled": true
  }
}
```

I believe more will come as I find some more time to evaluate and use **Renovate**

## Comparing Renovate with Dependabot

|                 | Dependabot                           | Renovate                                                                              | Note                |
|-----------------|--------------------------------------|---------------------------------------------------------------------------------------|---------------------|
| Clojure         |                                      | ✓ (Leiningen)                                                                         |                     |
| Dart            | ✓ (pub)                              | ✓ (pub)                                                                               | Flutter             |
| Docker          | ✓                                    | ✓ (ansible, docker-compose, dockerfile, droneci, gitlabci, kubernetes)                |                     |
| dotNet          | ✓ (NuGet)                            | ✓ (cake, NuGet)                                                                       |                     |
| Elm             | ✓ (elm-package)                      |                                                                                       |                     |
| Erlang          | ✓ (hex/mix)                          | ✓ (hex/mix)                                                                           | Elixir              |
| Git (submodule) | ✓                                    | ✓                                                                                     |                     |
| GitHub Actions  | ✓                                    | ✓                                                                                     |                     |
| Go              | ✓ (gomod)                            | ✓ (gomod)                                                                             |                     |
| HTML            |                                      | ✓                                                                                     |                     |
| Java            | ✓ (maven)                            | ✓ (gradle, maven)                                                                     |                     |
| JavaScript      | ✓ (npm, yarn)                        | ✓ (meteor, npm)                                                                       | See also Node       |
| Node            | ✓ (npm, yarn)                        | ✓ (nodenv, nvm, travis)                                                               | See also JavaScript |
| Objective-C     |                                      | ✓ (cocoapods)                                                                         |                     |
| Perl      |                                      | ✓ (cpanfile)                                                                                     | See: [TIL](../renovate/use_renovate_for_perl.md)                    |
| PHP             | ✓ (composer)                         | ✓ (composer)                                                                          |                     |
| pre-commit      |                                      | ✓                                                                                     |                     |
| Python          | ✓ (pip, pipenv, pip-compile, poetry) | ✓ (pip-compile, pip_requirements, pip_setup, pipenv, poetry, pyenv, setup-cfg, conan) |                     |
| Ruby            | ✓ (Bundler)                          | ✓ (Bundler, ruby-version)                                                             |                     |
| Rust            | ✓ (cargo)                            | ✓ (cargo)                                                                             |                     |
| Swift           |                                      | ✓ (cocoapods)                                                                         |                     |
| Terraform       | ✓                                    | ✓                                                                                     |                     |

There are more **Renovate** options, I have however not dug into these at this time. Do consult the listed resources and references for more information.

|                     | Dependabot | Renovate | Note |
|---------------------|------------|----------|------|
| ansible-galaxy      |            | ✓        |      |
| argocd              |            | ✓        |      |
| azure-pipelines     |            | ✓        |      |
| batect              |            | ✓        |      |
| batect-wrapper      |            | ✓        |      |
| bazel               |            | ✓        |      |
| bitbucket-pipelines |            | ✓        |      |
| buildkite           |            | ✓        |      |
| cdnurl              |            | ✓        |      |
| circleci            |            | ✓        |      |
| cloudbuild          |            | ✓        |      |
| deps-edn            |            | ✓        |      |
| flux                |            | ✓        |      |
| fvm                 |            | ✓        |      |
| homebrew            |            | ✓        |      |

Do not the list above might be severily outdated, please consult the [Renovate: Supported Managers](https://docs.renovatebot.com/modules/manager/#supported-managers) for the latest information.
Renovate is an alternative to Dependabot.

Do note Renovate is not bound to GitHub and you can host it yourself.

## Installation

- Install from [GitHub MarketPlace](https://github.com/marketplace/renovate)
- Create an account / Set up a plan
- Configure your repository by adding the configuration file

### Example

```json
{
    "$schema": "https://docs.renovatebot.com/renovate-schema.json",
    "extends": [
        "config:base"
    ],
    "enabledManagers": ["pre-commit"]
}
```

Lifted from [jonasbn/punycode: .github/renovate.json](https://github.com/jonasbn/punycode/blob/main/.github/renovate.json).

There are plenty of [configuration options](https://docs.renovatebot.com/configuration-options/).

I let Dependabot take care of Go and Renovate take care of **pre-commit** and **Perl** (`cpanfile`).

Personally I prefer Dependabot. The ability to issue commands via comments is really powerful, I hope something similar will be implemented in Renovate.

## Resources and References

- [Renovate][RENOVATE]
- [Renovate Documentation](https://docs.renovatebot.com/)
- [Mend Free Developer Tools: Renovate ](https://www.mend.io/free-developer-tools/renovate/)
- [Renovate: managers][RENOVATEMANAGERS]
- [GitHub Marketplace: Renovate](https://github.com/marketplace/renovate)
- [Renovate: Supported Managers](https://docs.renovatebot.com/modules/manager/#supported-managers)
- [Renovate: pre-commit](https://docs.renovatebot.com/modules/manager/pre-commit/)
- [Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/about-dependabot-version-updates)

[RENOVATE]: https://renovatebot.com/
[RENOVATEMANAGERS]: https://docs.renovatebot.com/modules/manager/
