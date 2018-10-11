# Customize your docker ps output

`docker ps` is nifty, you can even customize the outout to suit your needs.

My customization gives me the following output (squashed for readability):

`$ docker ps`

```bash
NAMES     CONTAINER ID  IMAGE       STATUS      NETWORKS  PORTS
registry  81bbacaeb8b9  registry:2  Up 2 weeks  bridge    0.0.0.0:5000->5000/tcp
```

The output is defined in: `$HOME/.docker/config.json`, like so:

```json
{
    "psFormat": "table {{.Names}}\\t{{.ID}}\\t{{.Image}}\\t{{.Status}}\\t{{.Networks}}\\t{{.Ports}}",
}
```

Please see the documentation for more information.

## References

- [Docker](https://docs.docker.com/engine/reference/commandline/ps/)
