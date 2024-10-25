# What is my IP?

There are pleny of websites which can help you, but you can do get your public IP using the command line - my preferred way.

Examples using `curl` could be **httpie** or similar.

```shell
curl icanhazip.com
```

```shell
# IPv4
curl -4 icanhazip.com
```

```shell
# IPv6
curl -6 icanhazip.com
```

## Resources and References

- [LinuxConfig: "How to use curl to get your public IP address](https://linuxconfig.org/how-to-use-curl-to-get-public-ip-address)
