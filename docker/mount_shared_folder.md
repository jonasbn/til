# Mount shared folders on Docker for Mac (beta)

From a docker image you can access folders on your OSX host system. This is useful if **docker** is used in your development proces.

```bash
$ docker run -v /Users/bob/myapp/src:/src
```

For a perl Mojolicious application I was able to get access to the log files like this:

```bash
$ docker run -v /tmp/app/log:/usr/src/app/log --rm -p 3000:3000 myapp
```

[Source: Docker blog](https://blog.docker.com/2014/10/docker-1-3-signed-images-process-injection-security-options-mac-shared-directories/)

[Reference source: Docker docs on osxfs (beta)](https://beta.docker.com/docs/mac/osxfs/)