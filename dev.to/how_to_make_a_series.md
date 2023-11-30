# How to make a series

dev.to has a very nice representation of articles, which are a so-called series.

A series require more that one article sharing the same meta-data.

The meta-data can be added to to of the posts in the form of:

```markdown
---
series: My Super Series Name
---
```

The three consecutive dashes/hyphens are the meta-data heading section of a dev.to article. The default looks as follows:

```markdown
---
title:
published: false
description:
tags:
# cover_image: https://direct_url_to_image.jpg
# Use a ratio of 100:42 for best results.
# published_at: 2023-03-11 16:02 +0000
---
```

Adjust the fields and add the `series:` key to your article, with a proper series name.

The moment you have more than one post sharing the series name, it is presented as a series.

This actually mean that the you can retrofit the series tag on old articles.

## Resources and References

- [dev.to blog post: "Dev.to Writing: Making a Series!"](https://dev.to/kallmanation/dev-to-writing-making-a-series-3h79)
