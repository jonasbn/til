# Detect What Files Have Changed

The **changed-files** GitHub Action is truly awesome.

I use it in combination with the GitHub action for doing spell checking on my TIL collection.

My problem was that I checked all files, which took a really long time. Now I only check the files that have changed, which is WAY faster.

But then I found out that my run failed when I had made changes to the local dictionary, but luckily the **changed-files** action has a way to control this, by limiting the files to check in numerous ways, so I decided to limit the files to check to only Markdown files.

```yaml
    - name: Get all changed markdown files
      uses: tj-actions/changed-files@v42
      id: changed_files
      with:
        files: |
           **.md
```

Lifted from: [.github/workflows/spellcheck.yml](https://github.com/jonasbn/til/blob/master/.github/workflows/spellcheck.yml#L11-L16) from this repository.

## Resources and References

- [tj-actions/changed-files](https://github.com/tj-actions/changed-files)
