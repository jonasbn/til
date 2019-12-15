# Use docker-compose-wait

When have **Docker** compose components, which have to wait for each other
`docker-compose-wait` can be of great help.

[version 3 of the Docker compose file format](https://docs.docker.com/compose/compose-file/) has a `depends_on` parameter.

It does however have _issues_ you have to be aware of.

> depends_on does not wait for db and redis to be “ready” before starting web - only until they
> have been started. If you need to wait for a service to be ready,

The article on [Controlling startup order](https://docs.docker.com/compose/startup-order/) contains mentions of tools to use or examples of how to roll your own. `docker-compose-wait` has worked for me and is my recommendation in this problem area.

Version [1.0.0 is shell based](https://github.com/ufoscout/docker-compose-wait/releases/download/1.0.0/wait), newer versions are based on **Rust**.

## References

- [GitHub: docker-compose-wait](https://github.com/ufoscout/docker-compose-wait)
- [Docker: Compose file version 3 reference](https://docs.docker.com/compose/compose-file/)
- [Docker: Control startup and shutdown order in Compose](https://docs.docker.com/compose/startup-order/)
