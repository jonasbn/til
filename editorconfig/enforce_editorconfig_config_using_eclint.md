# Enforce EditorConfig using eclint

If you are using **EditorConfig** for your favorite editor, you most certainly will need to have `eclint` in your toolbox.

**EditorConfig** works on new code and does not change existing code. This is actually quite reasonable since enabling **EditorConfig** should not change the layout of all your code _just for kicks_. That would result in huge diffs and might me interfering with what else you might be working on - changing your code should be a separate commit and a cognizant action.

Luckily we have `eclint`.

`eclint` can:

- validate that we adhere to our **EditorConfig** settings using `--check`
- apply our **EditorConfig** settings using `--fix`
- and finally tell us what our **EditorConfig**  setting are using `--infer`

`eclint` can do a bunch of other tricks, but these 3 are the primary ones and `--fix` can be used to make a deliberate change to all of your code to make it adhere to your **EditorConfig** settings.

## References

- [eclint GitHub repository](https://github.com/jedmao/eclint)
