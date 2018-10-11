# Caching docker build step

This tip was a complete _day-saver_. Building and rebuilding can take up a lot of time - so caching is essential.

I nailed the caching of the basic steps quite fast, since this works out of the box for **Docker**, but I was left with the actually assembling of dependencies. The concept is actually quite simple, the fewer layers you have the better, but for this specific step we want to enable extra layers for caching.

Normally my `Dockerfile` would look as follows:

```
# Copy your application files and dependency listings
COPY . /usr/src/app

# Set working directory
WORKDIR /usr/src/app

# Install dependencies
RUN carton install --deployment
```

By splitting and reordering the steps:

```
# Set working directory
WORKDIR /usr/src/app

# Copy your dependency listings
COPY cpanfile.snapshot /usr/src/app
COPY cpanfile /usr/src/app

# Install dependencies
RUN carton install --deployment

# Copy your application files
COPY . /usr/src/app
```

The step of installing dependencies are isolated and is no longer mixed with the actual staging of the application files.

## References

- [Blog: reducing size](https://blog.codeship.com/reduce-docker-image-size/)
- [Blog: caching](https://blog.playmoweb.com/speed-up-your-builds-with-docker-cache-bfed14c051bf)
