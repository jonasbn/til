# Learn S3

This is primarily focused on the AWS CLI tool.

## S3 sync

You can observe that the `sync` command seems to succeed, but it returns a non-zero value which is normally interpreted as an error.

Inspect the output of your operation and see if there are any warnings or steps that failed.

REF:

- [aws/aws-cli issue: 1082](https://github.com/aws/aws-cli/issues/1082)
- [aws/aws-cli issue: 1125](https://github.com/aws/aws-cli/issues/1125)

## Resources and References

- [AWS CLI Command References: aws.s3 sync](https://docs.aws.amazon.com/cli/latest/reference/s3/sync.html)
- [Spacelift blog: "AWS S3 Sync Command – Guide with Examples"](https://spacelift.io/blog/aws-s3()-sync)
- [AWS fundamentals blog: "AWS S3 Sync - An Extensive Guide"](https://awsfundamentals.com/blog/aws-s3-sync)
