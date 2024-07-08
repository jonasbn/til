# Specify Flag to Prohibit Upload to NPM

In your `package.json` file, you can specify a flag to prohibit uploading to NPM.

```json
{
  "private": true
}
```

The default value for `private` is `false`. When set to `true`, it will prevent the package from being published to the NPM registry.

The challenge with the default is that it is not explicitly set, and it is easy to forget to set it. By setting it to `true`, you are explicitly stating that the package should not be published to the NPM registry.

The flag can be used with the license specification in the `package.json` file, for private packages.

```json
{
  "private": true,
  "license": "UNLICENSED"
}
```

I believe generated packages have the license: `ISC`. This is a permissive license, but it is not suitable for all projects. By setting the license to `UNLICENSED`, you are explicitly stating that the package is not licensed for use by others.

## Resources and References

- [package.json](https://docs.npmjs.com/cli/v10/configuring-npm/package-json)
- [StackOverflow: "All Rights Reserved license in package.json"](https://stackoverflow.com/questions/31998202/all-rights-reserved-license-in-package-json)
- [dev.to: "Everything about package.json"](https://dev.to/sanchithasr/everything-about-package-json-2119)
