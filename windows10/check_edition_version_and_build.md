# Check edition, version and build for Windows 10

Go to "Settings" > "System" > "About"

Or use PowerShell:

```powershell
systeminfo | Select-String "^OS Name","^OS Version"
```

## Resources and References

- [Microsoft Docs](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting#check-your-build-number)
