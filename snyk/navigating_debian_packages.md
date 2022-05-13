# Navigating Debian Packages

I am using **Snyk** for doing security scanning of several of my **Docker** based projects:

- [Ebirah](https://github.com/jonasbn/ebirah)
- [docker-cheatset](https://github.com/jonasbn/docker-cheatset)
- [github-action-spellcheck](https://github.com/rojopolis/spellcheck-github-actions)

All of the Docker images are based on official **Debian** images, aiming to use the _slim_ versions to minimize the number of dependencies.

Mostly I receive notifications from **Snyk**, so this is a walk through of how I navigate the involved dependencies and **Debian** packages, spiced up with manual scans.

**rojopolis/spellcheck-github-actions** is based on [`python:3.10.2-slim`][DOCKERPYTHON], which is based on **Debian 11** (Bullseye).

Some additional Python components/packages are outlined in the `requirements.txt` specification.

I can test the **Python** requirements part using **Snyk**

```shell
snyk test
```

```text
zsh> snyk test

Testing /Users/jonasbn/develop/github-jonasbn/docker-cheatset...

Organization:      jonasbn
Package manager:   rubygems
Target file:       Gemfile
Project name:      docker-cheatset
Open source:       no
Project path:      /Users/jonasbn/develop/github-jonasbn/docker-cheatset
Licenses:          enabled

✔ Tested 15 dependencies for known issues, no vulnerable paths found.
```

That is very good, so lets test the **Docker** image. I do this using **Docker**.

```zsh
docker scan --severity high jonasbn/cheatset
```

```text
zsh> docker scan --severity high jonasbn/cheatset

Testing jonasbn/cheatset...

✗ High severity vulnerability found in perl/perl-modules-5.32
  Description: Improper Verification of Cryptographic Signature
  Info: https://snyk.io/vuln/SNYK-DEBIAN11-PERL-1925976
  Introduced through: perl/perl-modules-5.32@5.32.1-4+deb11u2, libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl@0.04-6+b1, perl/libperl5.32@5.32.1-4+deb11u2, perl@5.32.1-4+deb11u2, libalgorithm-merge-perl@0.08-3, libfile-fcntllock-perl/libfile-fcntllock-perl@0.22-3+b7, meta-common-packages@meta
  From: perl/perl-modules-5.32@5.32.1-4+deb11u2
  From: libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl@0.04-6+b1 > perl@5.32.1-4+deb11u2 > perl/perl-modules-5.32@5.32.1-4+deb11u2
  From: libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl@0.04-6+b1 > perl@5.32.1-4+deb11u2 > perl/libperl5.32@5.32.1-4+deb11u2 > perl/perl-modules-5.32@5.32.1-4+deb11u2
  and 7 more...

✗ High severity vulnerability found in libgcrypt20
  Description: Information Exposure
  Info: https://snyk.io/vuln/SNYK-DEBIAN11-LIBGCRYPT20-1297892
  Introduced through: gnupg2/dirmngr@2.2.27-2, apt@2.2.4, gnupg2/gnupg@2.2.27-2, procps@2:3.3.17-5
  From: gnupg2/dirmngr@2.2.27-2 > libgcrypt20@1.8.7-6
  From: apt@2.2.4 > apt/libapt-pkg6.0@2.2.4 > libgcrypt20@1.8.7-6
  From: apt@2.2.4 > gnupg2/gpgv@2.2.27-2 > libgcrypt20@1.8.7-6
  and 8 more...

✗ Critical severity vulnerability found in glibc/libc6-dev
  Description: Use After Free
  Info: https://snyk.io/vuln/SNYK-DEBIAN11-GLIBC-1296898
  Introduced through: sqlite3/libsqlite3-dev@3.34.1-3, zlib/zlib1g-dev@1:1.2.11.dfsg-2, build-essential@12.9, glibc/libc-bin@2.31-13+deb11u2, meta-common-packages@meta
  From: sqlite3/libsqlite3-dev@3.34.1-3 > glibc/libc6-dev@2.31-13+deb11u2
  From: zlib/zlib1g-dev@1:1.2.11.dfsg-2 > glibc/libc6-dev@2.31-13+deb11u2
  From: build-essential@12.9 > glibc/libc6-dev@2.31-13+deb11u2
  and 4 more...
  Image layer: 'apt-get -y install build-essential sqlite3 libsqlite3-dev'

✗ Critical severity vulnerability found in glibc/libc6-dev
  Description: Buffer Overflow
  Info: https://snyk.io/vuln/SNYK-DEBIAN11-GLIBC-2340908
  Introduced through: sqlite3/libsqlite3-dev@3.34.1-3, zlib/zlib1g-dev@1:1.2.11.dfsg-2, build-essential@12.9, glibc/libc-bin@2.31-13+deb11u2, meta-common-packages@meta
  From: sqlite3/libsqlite3-dev@3.34.1-3 > glibc/libc6-dev@2.31-13+deb11u2
  From: zlib/zlib1g-dev@1:1.2.11.dfsg-2 > glibc/libc6-dev@2.31-13+deb11u2
  From: build-essential@12.9 > glibc/libc6-dev@2.31-13+deb11u2
  and 4 more...
  Image layer: 'apt-get -y install build-essential sqlite3 libsqlite3-dev'

✗ Critical severity vulnerability found in glibc/libc6-dev
  Description: Buffer Overflow
  Info: https://snyk.io/vuln/SNYK-DEBIAN11-GLIBC-2340922
  Introduced through: sqlite3/libsqlite3-dev@3.34.1-3, zlib/zlib1g-dev@1:1.2.11.dfsg-2, build-essential@12.9, glibc/libc-bin@2.31-13+deb11u2, meta-common-packages@meta
  From: sqlite3/libsqlite3-dev@3.34.1-3 > glibc/libc6-dev@2.31-13+deb11u2
  From: zlib/zlib1g-dev@1:1.2.11.dfsg-2 > glibc/libc6-dev@2.31-13+deb11u2
  From: build-essential@12.9 > glibc/libc6-dev@2.31-13+deb11u2
  and 4 more...
  Image layer: 'apt-get -y install build-essential sqlite3 libsqlite3-dev'



Organization:      jonasbn
Package manager:   deb
Project name:      docker-image|jonasbn/cheatset
Docker image:      jonasbn/cheatset
Platform:          linux/arm64
Licenses:          enabled

Tested 185 dependencies for known issues, found 5 issues.

-------------------------------------------------------

Testing jonasbn/cheatset...

Organization:      jonasbn
Package manager:   npm
Target file:       /usr/local/lib/ruby/gems/3.1.0/gems/typeprof-0.21.1/vscode/package.json
Project name:      ruby-typeprof
Docker image:      jonasbn/cheatset
Licenses:          enabled

✔ Tested 11 dependencies for known issues, no vulnerable paths found.


Tested 2 projects, 1 contained vulnerable paths.
```

> _Oh no, oh no, oh no no no no no_

As you can see it detected 5 issues or _vulnerable paths_.

- 2 high
- 3 critical

Lets focus on the 3 critical issue, luckily all are in the package: [`glibc/libc6-dev`][LIBC6]

Our base image: [`ruby:3.1.0-slim-bullseye`][DOCKERRUBY] is based on Debian Bullseye (version 11). The issue comes from the package: [`glibc/libc6-dev@2.31-13+deb11u2`][LIBC6] being the version coming with Debian Bullseye.

We can actually find [a report][SNYKBULLSEYE]] from **Snyk** of this base image, at the time of writing it reported the same numbers:

- 2 high
- 3 critical

If we inspect that report, we can see that we have 3 critical Common Vulnerabilities and Exposures (CVEs).

- [CVE-2021-33574](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-33574)
- [CVE-2022-23218](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-23218)
- [CVE-2022-23219](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-23219)

## Resources and References

- [Snyk test of Debian Bullseye][SNYKBULLSEYE]
- [DockerHub: Ruby Official][DOCKERRUBY]
- [Debian Bullseye libc6-dev][LIBC6]
- [Blog post by Simon Willison: Debian Unstable Packages](https://til.simonwillison.net/docker/debian-unstable-packages)

[LIBC6]: https://packages.debian.org/bullseye/libc6-dev
[DOCKERRUBY]: https://hub.docker.com/_/ruby/
[DOCKERPYTHON]: https://hub.docker.com/_/python
[SNYKBULLSEYE]: https://snyk.io/test/docker/debian%3Abullseye
