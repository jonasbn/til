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

I believe more will come as I find some more time to evaluate **Renovate**

## Resources and References

1. [GitHub Marketplace: Renovate](https://github.com/marketplace/renovate)
1. [Renovate: Supported Managers](https://docs.renovatebot.com/modules/manager/#supported-managers)
1. [Renovate: pre-commit](https://docs.renovatebot.com/modules/manager/pre-commit/)
