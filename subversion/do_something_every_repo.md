# Do something with every repository

For example: easily update all your repos if they are located in the same directory

Uniformity is good and sane structure is good. I access a few different *SVN* servers, so I have organized my repositories by *SVN* server and then all the projects underneath.

```bash
% cd ~/develop/svn-CPAN-logicLAB/
% ls -1
BDKCPR
BDKCVR
BDKFI
BDKPHN
BDKPO
BDKPST
BJONASBN
BOPCC
DAND
MBB
MTS
NIKEPUB
PCLL
PCPLPSD
PCPLRSB
PCPMPUL
PCPMRVF
```

With this organisation it is possible for me to work on all repositories easily and I can update all using this simple command from the CLI.

```bash
% find . -depth 1 -type d -exec bash -c "cd '{}' && pwd && svn up" \;
```

You can of course change the *Subversion* command to suit your needs, I have also used the same structure for cleaning up cruft left behind and not belonging under version control using status

```bash
% find . -depth 1 -type d -exec bash -c "cd '{}' && pwd && svn up" \; | perl -ne 'if (/^\?/) { s/\?\s+//; print, "\n"; }' | xargs rm
```
