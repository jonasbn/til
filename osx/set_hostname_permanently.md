# Set hostname Permanently

Decide on a good hostname and then follow this guide:

> 1. Open a terminal.
>
> 2. Type the following command to change the primary hostname of your Mac:
> This is your fully qualified hostname, for example myMac.domain.com
>
> sudo scutil --set HostName <new host name>

```bash
scutil --set HostName hal9000
```

> 3. Type the following command to change the Bonjour hostname of your Mac:
> This is the name usable on the local network, for example myMac.local.
>
> sudo scutil --set LocalHostName <new host name>

```bash
scutil --set LocalHostName hal9000
```

> 4. If you also want to change the computer name, type the following command:
> This is the user-friendly computer name you see in Finder, for example myMac.
>
> sudo scutil --set ComputerName <new name>

```bash
scutil --set ComputerName hal9000
```

> 5. Flush the DNS cache by typing:
>
> dscacheutil -flushcache
>
> 6. Restart your Mac.

Done

## Resources and sReferences

- [StackExchange](https://apple.stackexchange.com/questions/287760/set-the-hostname-computer-name-for-macos)
- [OSXDaily: Youtube](https://www.youtube.com/watch?v=j7BhXkKbfe0)
