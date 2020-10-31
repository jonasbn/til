# Use spellcheck

I am the current maintainer of Robert Jordan's ([@rojopolis](https://github.com/rojopolis/))
GitHub action: [spellcheck][marketplace].

This is a pretty basic GitHub action based on the Python program: PySpelling, which is a a Python implementation on top of `aspell` and `hunspell`.

The manual should get you going if you want to implement checking of the spelling in your GitHub repository.

So here follows some more tips I stuff I have learned working with [spellcheck][marketplace] and it's dependencies.

## Create a custom dictionary fast

Since you can get PySpelling to ignore words, which would be reported as spelling errors, since the are not present in the available dictionary, if is often interesting to be able to create your own custom list of words to ignore.

```bash
$ pyspelling --config .spellcheck.yaml \
| grep -v -e '^Misspelled words' \
| grep -v -e '\-\-\-\-' \
| grep -v -e '^<htmlcontent>' \
| grep -v -e '^$' \
| grep -v -e '^!!!Spelling check failed!!!' \
| grep -v -e '^Spelling check passed :)' \
| sort -u > .wordlist.txt
```

Lets walk through the invocation.

`grep -v -e '^Misspelled words'`

Suppresses indication of misspelled words.

`grep -v -e '^<htmlcontent>'`

Suppresses some information on the DOM whereabouts of the word.

`grep -v -e '\-\-\-\-'`

Suppresses a separator, used between the above indicator and the actual works

`grep -v -e '^$'`

Suppresses empty lines, also used as a separator.

`grep -v -e '^!!!Spelling check failed!!!'`

Suppresses the message emitted when a spelling check fails.

`grep -v -e '^Spelling check passed :)'`

Suppresses the message emitted when a spelling check passes.

## Resources and References

- [GitHub Marketplace: Spellcheck][marketplace]

[marketplace]: https://github.com/marketplace/actions/github-spellcheck-action
