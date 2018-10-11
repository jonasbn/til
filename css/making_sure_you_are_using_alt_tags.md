# Making sure you are using alt tags

Include this rule in your CSS while developing to make sure you remember those `alt` tags.

```css
img:not([alt]){
    filter: grayscale(100%);
}
```

And as suggested you can extending with handling empty `alt` tags:

```css
img[alt=""],
img:not([alt]){
    filter: grayscale(100%);
}
```

## References

- [Twitter: @jdjuan](https://twitter.com/jdjuan/status/1022301088651853824)
