# Use doctl

`doctl` is a CLI application for interacting with Digital Ocean

It can be installed in various ways, see [the documentation][INSTALL].

`doctl` can be used to interact with Digital Ocean in various ways, it seems however that is it not possible to SSH into droplets using since the `ssh` subcommand for the command `app` is not available.

I [responded to a question on StackOverflow](https://stackoverflow.com/questions/68966644/how-to-ssh-into-digital-oceans-app-platform-app/77132889#77132889) on how to SSH into a droplet using `doctl`, but I could not find a way to do this.

At the time of responding I was using version: `doctl version 1.98.1-release`

SSH does however still not seem to be available:

```bash
doctl apps help
The subcommands of `doctl app` manage your App Platform apps. For documentation on app specs, see the [app spec reference](https://www.digitalocean.com/docs/app-platform/concepts/app-spec).

Usage:
  doctl apps [command]

Aliases:
  apps, app, a

Available Commands:
  create                    Create an app
  create-deployment         Creates a deployment
  delete                    Deletes an app
  dev                       [BETA] Display commands for working with App Platform local development.
  get                       Get an app
  get-deployment            Get a deployment
  list                      Lists all apps
  list-alerts               Lists alerts on an app
  list-buildpacks           Lists buildpacks
  list-deployments          List all deployments
  list-regions              Lists available App Platform regions
  logs                      Retrieves logs
  propose                   Proposes an app spec
  spec                      Display commands for working with app specs
  tier                      Display commands for working with app tiers
  update                    Updates an app
  update-alert-destinations Updates alert destinations
  upgrade-buildpack         Upgrades app's buildpack

Flags:
  -h, --help   help for apps

Global Flags:
  -t, --access-token string   API V2 access token
  -u, --api-url string        Override default API endpoint
  -c, --config string         Specify a custom config file (default "/Users/jonasbn/Library/Application Support/doctl/config.yaml")
      --context string        Specify a custom authentication context name
      --http-retry-max int    Set maximum number of retries for requests that fail with a 429 or 500-level error (default 5)
      --interactive           Enable interactive behavior. Defaults to true if the terminal supports it (default true)
  -o, --output string         Desired output format [text|json] (default "text")
      --trace                 Show a log of network activity while performing a command
  -v, --verbose               Enable verbose output

Use "doctl apps [command] --help" for more information about a command.
```

Version:

```bash
doctl version
doctl version 1.109.1-release
```

## Resources and References

1. [How to Install and Configure doctl][INSTALL]
1. [Command Line Reference for doctl](https://docs.digitalocean.com/reference/doctl/reference/)
1. [doctl apps](https://docs.digitalocean.com/reference/doctl/reference/apps/)
1. [doctl compute, ssh](https://docs.digitalocean.com/reference/doctl/reference/compute/ssh/)

[INSTALL]: https://docs.digitalocean.com/reference/doctl/how-to/install/
