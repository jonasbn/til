# Pinning Images in Docker Files

I recently fell over this article on [Medium][MEDIUM] on why you should pin your Docker images.

I never gave it any thought for Docker before, but this is something I do for GitHub Actions, so that I am sure that I point to exactly the version I set out to use and not a reference to an image.

I know this is not some security _silver bullet_, but it does have a bit more leverage instead of just pointing to some symbolic reference.

An example from my [Ebirah project](https://jonasbn.github.io/ebirah/), which is a Docker wrapper for a Perl command.

It uses the [official Perl base image](https://hub.docker.com/_/perl/):

I used to point to a tag something along the lines of:

```Docker
FROM perl:5.40.2-slim-bookworm
```

I could pick one of the other tags like:

- `5`
- `5.40`
- `5.40.2`
- `latest`
- `stable`
- `5.40-bookworm`
- `5-bookworm`
- `bookworm`
- `stable-bookworm⁠`

But I that I can read:

- The image
- The exact version
- The base image (in this case Debian distribution)

So pinning on base of the SHA has to look like this:

```Docker
FROM perl:5.40.2-slim-bookworm@sha256:0a81ef287bfa7a17bcb39292999eb37caa20502ab0b8624a3e73787b205ff8f0
```

The Docker SHA can be located by downloaded the base image:

```shell
docker pull perl:5.40.2-slim-bookworm
5.40.2-slim-bookworm: Pulling from library/perl
b16f1b166780: Already exists
69736a21eaa4: Pull complete
1084942975aa: Pull complete
9ad94c6e0d2a: Pull complete
Digest: sha256:0a81ef287bfa7a17bcb39292999eb37caa20502ab0b8624a3e73787b205ff8f0
Status: Downloaded newer image for perl:5.40.2-slim-bookworm
docker.io/library/perl:5.40.2-slim-bookworm
```

And the digest is in the output:

- `sha256:ffca6fbf5d40c2dc3dac0fc11640e29feaabef54cf274e3d4cb24204ae62ccc2`

Or you can fetch it using `inspect` (you do not have to combine it with `jq`):

```shell
docker inspect perl:5.40.2-slim-bookworm |jq -r '.[] | .RepoDigests[]'
perl@sha256:0a81ef287bfa7a17bcb39292999eb37caa20502ab0b8624a3e73787b205ff8f0
```

As Bálint Biró, the writer of the Medium article:

> As with everything on the internet, take this article with a grain of salt. By pinning the container version to a specific SHA you’re trading off “avoiding potential build failures” for “getting potential security patches for free”. I personally prefer controlling these upgrades myself, but it’s completely valid if you don’t.

## Resources and References

- [Medium: "Why you should pin your docker images with SHA instead of tags"][MEDIUM]
- [dev.to: "Ebirah Releases and Docker Image Pinning"](https://dev.to/jonasbn/ebirah-releases-and-docker-image-pinning-4pb)
- [TIL/github actions: Pin Your Action Dependencies](../github_actions/pin_your_action_dependencies.md)
- [TIL/github actions: How do I resolve the SHA checksum for pinning](../github_actions/how_do_I_resolve_the_sha_checksum.md)

[MEDIUM]: https://rockbag.medium.com/why-you-should-pin-your-docker-images-with-sha-instead-of-tags-fd132443b8a6
