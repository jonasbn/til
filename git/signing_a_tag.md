# Signing a Tag

I view one of my repositories and found out that I was not signing my tags, so the appeared without the verified annotation.

If you have set up signing for your Git user, you can simply apply the `-s`, like so:

```shell
git tag -s 0.6.0 -m "Release 0.6.0"
git push origin 0.6.0
```
