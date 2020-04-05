# Exec Error

I was attempting to build a basic Docker container when I observed the following error:

```
OCI runtime create failed: container_linux.go:349
```

So I _googled_ and found no exact matches, I guess line 349 is sort of a moving taget, so I picked the first link in the result set.

The solution was basically, missing execute bit on my `ENTRYPOINT`

Easy solution:

```bash
$ chmod +x entrypoint.sh
```

But the need for the script to be executable on the host system, might vary, so instead I added the followin to my `Dockerfile`

```Dockerfile
RUN chmod +x /entrypoint.sh
```

This does the job just as good, but does possibly add more _build time_ to your Docker build, so pick the solution that suits your needs.

## Resources and References

- [StackOverflow: "Dockerfile - ERROR: for php Cannot start service php: OCI runtime create failed: container_linux.go:348: starting container process caused "exec"](https://stackoverflow.com/questions/51458505/dockerfile-error-for-php-cannot-start-service-php-oci-runtime-create-failed)
