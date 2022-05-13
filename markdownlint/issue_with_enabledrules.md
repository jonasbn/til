# Issue with enabledrules

If you are using **markdownlintcli**, the **Node** implementation for **Markdownlint** and observe the following issue:

```
/usr/local/lib/node_modules/markdownlint-cli/node_modules/markdownlint/lib/markdownlint.js:262
      capturedRules = { ...enabledRules };

SyntaxError: Unexpected token ...
    at createScript (vm.js:74:10)
    at Object.runInThisContext (vm.js:116:10)
    at Module._compile (module.js:533:28)
    at Object.Module._extensions..js (module.js:580:10)
    at Module.load (module.js:503:32)
    at tryModuleLoad (module.js:466:12)
    at Function.Module._load (module.js:458:3)
    at Module.require (module.js:513:17)
    at require (internal/module.js:11:18)
    at Object.<anonymous> (/usr/local/lib/node_modules/markdownlint-cli/markdownlint.js:14:22)
```

The above example is lifted from [a GitHub issue](https://github.com/igorshubovych/markdownlint-cli/issues/57)

You have to update your version of **Node**.

You can do that using Node Version Manager (nvm) or if you like me are using **Travis**, in your `.travis.yaml`

```yaml
language: node_js
node_js:
  - "stable"
cache:
  directories:
    - "node_modules"
```

The above example is lifted from [an example repository](https://github.com/lauragift21/travis-blog/blob/master/.travis.yml) by [Egwuenu Gift](https://twitter.com/lauragift21), based on her [dev.to post](https://dev.to/lauragift21/setup-continuous-integration-with-travis-ci-in-your-nodejs-app-26i2) on setting up Travis CI for Node projects on GitHub.

## Resources

- [nvm GitHub repository](https://github.com/nvm-sh/nvm)
- [dev.to: Setup Continuous Integration with Travis CI in Your Nodejs App](https://dev.to/lauragift21/setup-continuous-integration-with-travis-ci-in-your-nodejs-app-26i2)
- [Original blog post](https://www.giftegwuenu.com/setup-continuous-integration-with-travis-ci-in-your-nodejs-app/)
- [GitHub repository for the above blog post](https://github.com/lauragift21/travis-blog)
