# Specify Flag to Prohibit Upload to NPM

In your `package.json` file, you can specify a flag to prohibit uploading to NPM.

```json
{
  "private": true
}
```

The default value for `private` is `false`. When set to `true`, it will prevent the package from being published to the NPM registry.

The challenge with the default is that it is not explicitly set, and it is easy to forget to set it. By setting it to `true`, you are explicitly stating that the package should not be published to the NPM registry.

## Resources and References

- [package.json](https://docs.npmjs.com/cli/v10/configuring-npm/package-json)
