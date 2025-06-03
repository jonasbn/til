# Z-index

I was battling `z-index` and I feel over this description.

> Not specifying z-index is the same as z-index: auto; that is its initial value.
>
> auto and 0 mean the same thing if your element doesn't create its own stacking context; e.g. it is not positioned as relative, absolute or fixed.
>
>If your enclosing div isn't positioned, then whatever you set its z-index to doesn't matter; it and all its contents will participate in the stacking context of html, and its descendants will always be positioned in front of it.
>

## Resources and References

- [StackOverflow: "Difference between auto, 0, and no z-index?"](https://stackoverflow.com/questions/14109862/difference-between-auto-0-and-no-z-index)
