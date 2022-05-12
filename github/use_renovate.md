# Use Renovate

**Renovate**  is a very powerful alternative to **Dependabot** which reaches beyond GitHub.

I had it recommended, but I have only just scratched the surface of what it can do. Do note I am a very happy user of **Dependabot**.

One of the areas Dependabot does not handle is my other favorite tool: **pre-commit**, **Renovate** supports this via an experimental _manager_.

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

## Resources and References

1. [GitHub Marketplace: Renovate](https://github.com/marketplace/renovate)
1. [Renovate: Supported Managers](https://docs.renovatebot.com/modules/manager/#supported-managers)
1. [Renovate: pre-commit](https://docs.renovatebot.com/modules/manager/pre-commit/)
1. [Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/about-dependabot-version-updates)
