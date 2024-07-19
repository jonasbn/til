# Publish an image to DockerHub

Publishing a Docker image to [DockerHub][dockerhub] is very easy. Unfortunately there are a few variations, so when you are reading up on this process, you might get a bit confused.

So to add to that confusion, here is my take.

Build the Docker image you want to publish, based on your `Dockerfile`

```bash
$ docker build -t jonasbn/myimage .
```

Normally you would probably build, without your namespacing, but since out goal is to publish to DockerHub, the namespace is quite important.

Log in to DockerHub. This requires credentials. This step can often be skipped, not initially of course, but the `docker` command is quite friendly when it comes to remembering you.

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

If you get the error: `denied: requested access to the resource is denied`

It might be due to the fact that you are not logged in, so check that before you start investigating all kinds of other things.

REF: [StackOverflow: docker push error "denied: requested access to the resource is denied"](https://stackoverflow.com/questions/43858398/docker-push-error-denied-requested-access-to-the-resource-is-denied)

I found an interesting article on tagging.

- [How-to-geek: How to Add, Replace, and Remove Docker Image Tags](https://www.howtogeek.com/devops/how-to-add-replace-and-remove-docker-image-tags/#removing-tags)

## Resources and References

- [DockerHub][dockerhub]
- [Hackernoon: "Publish your first Docker Image to Docker Hub"](https://hackernoon.com/publish-your-docker-image-to-docker-hub-10b826793faf)

[dockerhub]: https://hub.docker.com/
