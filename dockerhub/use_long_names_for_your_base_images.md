# Use Long Names for Your Base Images

When you are a consumer of base images from DockerHub, do yourself the favor of using the long names.

In your `Dockerfile` if you just specify the short name:

```Dockerfile
FROM perl:5.34.0
```

REF: [GitHub: jonasbn/ebirah](https://github.com/jonasbn/ebirah/blob/master/Dockerfile)

You cannot see what base image, this is based on, so when you can to investigate potential security issues etc. you first have to find out what operating system and version you are based on.

`perl:5.34.0` is the equivalent of: `5.34.0-bullseye`

And also all of these variations are available.

```text
- 5.34.0, 5.34, 5, latest, 5.34.0-bullseye, 5.34-bullseye, 5-bullseye, bullseye
- 5.34.0-buster, 5.34-buster, 5-buster, buster
- 5.34.0-slim, 5.34-slim, 5-slim, slim, 5.34.0-slim-bullseye, 5.34-slim-bullseye, 5-slim-bullseye, slim-bullseye
- 5.34.0-slim-buster, 5.34-slim-buster, 5-slim-buster, slim-buster
- 5.34.0-threaded, 5.34-threaded, 5-threaded, threaded, 5.34.0-threaded-bullseye, 5.34-threaded-bullseye, 5-threaded-bullseye, threaded-bullseye
- 5.34.0-threaded-buster, 5.34-threaded-buster, 5-threaded-buster, threaded-buster
- 5.34.0-slim-threaded, 5.34-slim-threaded, 5-slim-threaded, slim-threaded, 5.34.0-slim-threaded-bullseye, 5.34-slim-threaded-bullseye, 5-slim-threaded-bullseye, slim-threaded-bullseye
- 5.34.0-slim-threaded-buster, 5.34-slim-threaded-buster, 5-slim-threaded-buster, slim-threaded-buster
```

Additional examples for Ruby and Python, where I recommend the same pattern.

```Dockerfile
FROM ruby:3.1.0-bullseye
```

REF: [GitHub: jonasbn/docker-cheatset](https://github.com/jonasbn/docker-cheatset/blob/master/Dockerfile#L1)

```Dockerfile
FROM python:3.10.2-slim as spellcheck-builder
```

REF: [GitHub: rojopolis/spellcheck-github-actions](https://github.com/rojopolis/spellcheck-github-actions/blob/master/Dockerfile#L5)

## Bonus Material

1. You can configure Dependabot to assist you in keeping your Docker images up to date
1. You can use Snyk to do security audits of your Docker images

## Resources and References

- [Official Perl images](https://hub.docker.com/_/perl)
- [Official Ruby images](https://hub.docker.com/_/ruby)
- [Official Python images](https://hub.docker.com/_/python/)
