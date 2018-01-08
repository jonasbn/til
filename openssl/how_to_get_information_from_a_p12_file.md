# How to get information from a P12 file

This is how you extract information from a P12 file.

```bash
$ openssl pkcs12 -info -in keyStore.p12
```

You will be prompted for a password and if authentication is successful 
the information will be displayed.

Source [StackOverflow](https://security.stackexchange.com/questions/92868/extract-public-information-from-p12-without-having-the-password)
