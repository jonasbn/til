# Multiple Keys in JSON Templates for AWS

To specify more than one subject (sub) in your AWS IAM trust policy for GitHub Actions OIDC, you should provide an array of values for the `ForAllValues:StringLike` condition. Here’s how you can do it:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::<account>:oidc-provider/token.actions.githubusercontent.com"
            },
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Condition": {
                "StringEquals": {
                    "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
                },
                "ForAllValues:StringLike": {
                    "token.actions.githubusercontent.com:sub": [
                        "repo:<org>/<repo1>:*",
                        "repo:<org>/<repo2>:*"
                    ]
                }
            }
        }
    ]
}
```

Key point:

Use an array ([ ... ]) for multiple subjects under `ForAllValues:StringLike`.
Do not repeat the same key; instead, list all values in the array.
