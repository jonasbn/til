# Notes on CloudFront - S3 static sites

- You cannot access environment variables as you normally would
- You cannot use `.env` files

The reference of `process.env.*` does not work since there is no process as such.

## Resources and References

- [StackOverflow: "Use env variable in VueJS SPA components at runtime?"](https://stackoverflow.com/questions/74430174/use-env-variable-in-vuejs-spa-components-at-runtime)
- [Medium: "How to use environment variables in your static webapp/SPA?"](https://christophef.medium.com/how-to-use-environment-variables-in-your-static-spa-676594b3ac72)
