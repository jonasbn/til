# Theme Sensitive Images in GitHub Markdown

> Users can now specify the theme an image is displayed for in Markdown. Appending #gh-dark-mode-only or
> #gh-light-mode-only to the end of an image url will define whether it's only shown to viewers using a
> light or a dark GitHub theme.

Example of Dark theme enablement

```markdown
![GitHub-Mark-Light](https://user-images.githubusercontent.com/3369400/139447912-e0f43f33-6d9f-45f8-be46-2df5bbc91289.png#gh-dark-mode-only)
```

![GitHub-Mark-Light](https://user-images.githubusercontent.com/3369400/139447912-e0f43f33-6d9f-45f8-be46-2df5bbc91289.png#gh-dark-mode-only)

Example of Light theme enablement

```markdown
![GitHub-Mark-Dark](https://user-images.githubusercontent.com/3369400/139448065-39a229ba-4b06-434b-bc67-616e2ed80c8f.png#gh-light-mode-only)
```

![GitHub-Mark-Dark](https://user-images.githubusercontent.com/3369400/139448065-39a229ba-4b06-434b-bc67-616e2ed80c8f.png#gh-light-mode-only)

As described by Stefan Judis in his [blog post][JUDIS], you can make a very specific GitHub solution:

```markdown
![Fancy logo](./dark.png#gh-dark-mode-only)
![Fancy logo](./light.png#gh-light-mode-only)
```

This is the solution outlined above.

But with GitHub introducing the `picture` element, there is a better way

```html
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./dark.png">
  <img alt="Text changing depending on mode. Light: 'So light!' Dark: 'So dark!'" src="./light.png">
</picture>
```

The first one is not so compatible outside GitHub, the second one is relying on HTML and promises more compatibility, but I guess it depends on toolchain.


## Resources and References

1. [Specify theme context for images in Markdown](https://github.blog/changelog/2021-11-24-specify-theme-context-for-images-in-markdown/)
1. ["How to define dark/light mode images in GitHub Markdown" blog post by Stefan Judis][JUDIS]
1. [Example repository by Stefan Judis](https://github.com/stefanjudis/github-light-dark-image-example)

[JUDIS]: https://www.stefanjudis.com/notes/how-to-define-dark-light-mode-images-in-github-markdown/
