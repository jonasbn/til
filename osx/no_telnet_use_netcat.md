# No telnet use netcat

`telnet` is no longer available on **macos**, we do however have `netcat`.

```
nc -vz <ip address> <port number>
```

## References

- [Blog post on netcat on macos](https://www.igorkromin.net/index.php/2018/07/12/macos-has-a-much-better-tool-than-telnet-for-testing-remote-server-connectivity/)
- [macos man-page nc](https://ss64.com/osx/nc.html)
