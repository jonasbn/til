# Missing Signed-Bu in the sources.list(5)

I came accross this error on a DigitalOcean droplet running Ubuntu the other day, when running:

`sudo apt update`

I found out that I had a file named: `third-party.sources`.

The contents was:

```
Types: deb
URIs: http://mirrors.digitalocean.com/ubuntu/
Suites: noble noble-updates noble-backports
Components: main universe restricted multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

In another droplet, the file: `/etc/apt/sources.list.d/ubuntu.sources` contained a similar entry and:

```
Types: deb
URIs: http://mirrors.digitalocean.com/ubuntu/
Suites: noble noble-updates noble-backports
Components: main universe restricted multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

## Ubuntu security updates. Aside from URIs and Suites,
## this should mirror your choices in the previous section.
Types: deb
URIs: http://security.ubuntu.com/ubuntu
Suites: noble-security
Components: main universe restricted multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

Where the same file in the first droplet looked as follow:

```
Types: deb
URIs: http://mirrors.digitalocean.com/ubuntu/
Suites: noble noble-updates noble-backports
Components: main universe restricted multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

So I copied the contents of `third-party.sources` to `/etc/apt/sources.list.d/ubuntu.sources` and removed `third-party.sources` and the warning went away.

- [DigitalOcean Community Questions: "N: Missing Signed-By in the sources.list(5) entry for 'http://mirrors.digitalocean.com/ubuntu'"](https://www.digitalocean.com/community/questions/n-missing-signed-by-in-the-sources-list-5-entry-for-http-mirrors-digitalocean-com-ubuntu)
- [AskUbuntu: "Missing Signed-By in the sources.list(5) entry after installing Ubuntu 24.04"](https://askubuntu.com/questions/1516700/missing-signed-by-in-the-sources-list5-entry-after-installing-ubuntu-24-04)
