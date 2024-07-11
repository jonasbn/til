# Allow SSH on another port

I have on occasion encountered situations where I have wanted to allow SSH on a port other than the default port 22. This is a quick reference for how to do that using `ufw`.

```bash
sudo ufw allow <port number>/tcp
```

When doing major OS updates on Digital Ocean droplets, this is common practice, so the host is reachable when the update is complete.

Some people recommend disabling the default SSH port and use another port, to me this sounds a bit like security through obscurity, since a port scanner would probably give away the used port number anyway.

## Resources and References

- [Ask Ubuntu: "How do I configure ufw to allow ssh on another port?"](https://askubuntu.com/questions/174981/how-do-i-configure-ufw-to-allow-ssh-on-another-port)
