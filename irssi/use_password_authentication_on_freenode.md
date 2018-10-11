# Use password authentication on Freenode

Some IRC channels on Freenode impose an authentication prior to joining. I have only observed this on Freenode, but I might be applicable for other IRC networks.

Luckily the Freenode IRC daemon supports communicating password during the connection.

This can be specified like this in your `~/.irssi/config`

```
  {
    address = "irc.freenode.net";
    chatnet = "Freenode";
    port = "6667";
    autoconnect = "Yes";
    password = "secretpassword";
  },
```

According to the source listed below, you could also try with a longer delay for your NickServ authentication. I have not tried that out, please refer to the listed source.

## References

- [SuperUser.com](https://superuser.com/questions/374012/irssi-tries-to-join-python-before-sending-the-identify-message)
