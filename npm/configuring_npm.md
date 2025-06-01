# Configuring NPM

I recently (yesterday) ran into a problem, where I need to use `npm` command line flag:

- `--legacy-peer-deps`

I could use it locally, but I also need to use it on DigitalOceans app platform, so I could control the build.

Luckily you can create a: `.npmrc`

And you can add the flag the following way:

```shell
npm config --location=project set legacy-peer-deps=true
```

The location can be one of:

- `global`
- `user`
- `project`

The file can for project, as in my case, be committed to the relevant repository.

And for use with DigitalOcean I can now influence the `npm` execution.

## Resources and References

- [NPM: GitHub Repository Discussion](https://github.com/npm/rfcs/discussions/283)
- [DOC Community Response](https://www.digitalocean.com/community/questions/how-to-build-nextjs-app-using-npm-install-legacy-peer-deps-instead-of-default-npm-install?comment=211375)
- [DOC Community Response](https://www.digitalocean.com/community/questions/install-building-with-legacy-peer-deps-in-app-platform?comment=211373)
