# Stop Visual Studio Code from Calling Home

This tip is only for _telemetrics_, not 3rd. party plugin data.

Go into `Preferences` > `Settings` and edit your `User Settings` and add the following line:

```json
"telemetry.telemetryLevel": "off",
```

In earlier versions this was:

```json
"telemetry.enableTelemetry": false
```

As was earlier specified in the [FAQ](https://code.visualstudio.com/docs/supporting/faq#_how-to-disable-telemetry-reporting), this is however outdated now.

## References

- [Visual Studio Code Docs](https://code.visualstudio.com/docs/getstarted/telemetry#_disable-telemetry-reporting)
