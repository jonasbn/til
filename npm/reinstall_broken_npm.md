# Reinstall Broken npm

If `npm` is broken, it cannot be used to fix itself

```shell
npm i -g npm
```

From the `npm` [README][README] the following remedy is mentioned:

```shell
curl -qL https://www.npmjs.com/install.sh | sudo sh
```

> [!WARNING]
> Remember to always review endpoints like this before executing

## Resources and References

- [StackOverflow: "How to Reinstall Broken npm"](https://stackoverflow.com/questions/49748307/how-to-reinstall-broken-npm)
- [NPM README][README]

[README]: https://github.com/npm/cli/tree/v7.6.1#direct-download
