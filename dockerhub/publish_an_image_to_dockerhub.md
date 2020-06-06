# Publish an image to DockerHub

Publishing a Docker image to DockerHub is very easy. Unfortunately there are a few variations, so when you are reading up on this process, you might get a bit confused.

So to add to that confusion, here is my take.

Build the Docker image you want to publish, based on your `Dockerfile`

```bash
$ docker build -t jonasbn/myimage .
```

Normally you would propably build, without your namespacing, but since out goal is to publish to DockerHub, the namespace is quite important.

Log in to DockerHub. This requries credentials. This step can often be skipped, not initially of couse, but the `docker` command is quite friendly when it comes to remembering you.

```bash
$ docker login
```

Push your newly built image to DockerHub

```bash
$ docker push jonasbn/myimage:latest
```

And if you use versioning, push the same image with a tag

```bash
$ docker push jonasbn/myimage:0.1.0
```

## Resources and References

- [Hackernoon: "Publish your first Docker Image to Docker Hub"](https://hackernoon.com/publish-your-docker-image-to-docker-hub-10b826793faf)
