# Next.js

## No Cache Detected

Next.JS is bit heavy so using a build cache is recommended.

- [Next.js: no-cache](https://nextjs.org/docs/messages/no-cache)
- [Next.js: CI cache building](https://nextjs.org/docs/pages/building-your-application/deploying/ci-build-caching)

Since we use GitHub Actions and the official action from GitHub, we are good to go.

- [GitHub Marketplace: Cache action](https://github.com/marketplace/actions/cache)
- [GitHub Repository: Cache action](https://github.com/actions/cache)

This little snippet does all the magic:

```yaml
uses: actions/cache@v4
with:
  # See here for caching with `yarn` https://github.com/actions/cache/blob/main/examples.md#node---yarn or you can leverage caching with actions/setup-node https://github.com/actions/setup-node
  path: |
    ~/.npm
    ${{ github.workspace }}/.next/cache
  # Generate a new cache whenever packages or source files change.
  key: ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}-${{ hashFiles('**/*.js', '**/*.jsx', '**/*.ts', '**/*.tsx') }}
  # If source files changed but packages didn't, rebuild from a prior cache.
  restore-keys: |
    ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}-
```

It takes care of building the cache and using the cache.

## Building an SPA for deployment to AWS S3

If you want to build an SPA for deployment to AWS S3 and AWS CloudFront

Add the following to: `next.config.ts`

```typescript
output: 'export',
```

So it resembles something along the lines of:

```typescript
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  output: 'export',
};

export default nextConfig;
```

Then the build step will output a folder named `out/` which contain production optimized artifacts that can easily be deployed to AWS.

## Resources and References

- [Next.js by Vercel](https://nextjs.org/)
- [Dev.to: "Deploy Next JS Application to Amazon CloudFront with S3"](https://dev.to/halchester/deploy-next-js-application-to-amazon-cloudfront-with-s3-2ibb)
