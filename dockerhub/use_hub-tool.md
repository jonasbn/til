# Use hub-tool

A very interesting flag is `--format json`, combine this with `jq` and you have a _true_ powertool.

```shell
hub-tool tag ls jonasbn/github-action-spellcheck --format json |jq -S --raw-output '.[] | [.Name, .LastPulled, fromdate(.LastPulled) ] | @tsv'
```

## Resources and References

- [GitHub repository](https://github.com/docker/hub-tool)
- [GitHub blog post](https://www.docker.com/blog/docker-hub-experimental-cli-tool/)
