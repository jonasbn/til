# AWS CLI SSO

## To Configure

```shell
aws sso configure
```

## To Authenticate

```shell
aws sso login
```

## Use

```shell
aws --profile <profile> <command>
```

When you attempt to run a command and you get:

```
Error when retrieving token from sso: Token has expired and refresh failed
```

Do:

```shell
aws --profile <profile> login
```

And if you want to see who you are logged in as:

```shell
aws sts get-caller-identity
```

It is nice to know the above, but to get your workday to flow, use: Granted and the command line tool: `assume`.

## Resources and References

- [Medium: "Boss way to authenticate AWS CLI with SSO for multi-account orgs"](https://medium.com/@mrethers/boss-way-to-authenticate-aws-cli-with-sso-for-multi-account-orgs-aa8a5e228bdd)
- [Medium: "How to set up AWS CLI with AWS Single Sign-On (SSO)"](https://pushkar-sre.medium.com/how-to-set-up-aws-cli-with-aws-single-sign-on-sso-acf4dd88e056)
- [StackOverflow: "aws sts get-caller-identity not displaying expected account"](https://stackoverflow.com/questions/75788816/aws-sts-get-caller-identity-not-displaying-expected-account)
- [Granted.dev](https://granted.dev/)
