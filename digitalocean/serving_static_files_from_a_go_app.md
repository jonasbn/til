# Serving Static Files From a Go App

When I developed [pxy-redirect](https://github.com/jonasbn/pxy-redirect), a simple app in **Go** hosted with DigitalOcean, I wanted to service a static page.

Serving an `index.html` from the root of my repository worked fine when testing locally, but not when the app was deployed to DigitalOcean.

The solution was placing the static assets in a subdirectory, like: `static/`.

So I went from:

```go
http.ServeFile(w, r, "index.html")
```

To:

```go
http.ServeFile(w, r, "static/index.html")
```

And in addition I added:

- `favicon.ico`
- `robots.txt`

```go
if url.String() == "/robots.txt" {
    http.ServeFile(w, r, "static/robots.txt")
    return
}

if url.String() == "/favicon.ico" {
    http.ServeFile(w, r, "static/favicon.ico")
    return
}
```

All in all a nice little collection for a basic HTTP server not relying on a framework, just **Go**.

## Resources and References

- [pxy-redirect](https://github.com/jonasbn/pxy-redirect)
- [DigitalOcean app platform](https://www.digitalocean.com/products/app-platform)
- [Go: net/http ServeFile](https://pkg.go.dev/net/http#ServeFile)
