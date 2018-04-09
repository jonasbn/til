# Stop Visual Studio Code from Calling Homebrew

This tip is only for _telemetrics_, not 3rd. party plugin data or crash reports
to Microsoft.

Go into `Preferences` > `Settings` and edit your `User Settings` and add the
following line:

```json
"telemetry.enableTelemetry": false
```

Source: [Visual Studio Code FAQ](https://code.visualstudio.com/docs/supporting/faq#_how-to-disable-telemetry-reporting)
