# Delete local and remote branch

Sometimes you want a branch to go away completely

```bash
# local
$ git branch -d <branch_name>

# remote
$ git push origin --delete <branch_name>
```

I have created a little utility in my path with the above code. Available as [a Gist](https://gist.github.com/jonasbn/bb46e6602b8c1cccf76343eaa0fd89e7).

## References

- [StackOverflow](http://stackoverflow.com/questions/2003505/how-to-delete-a-git-branch-both-locally-and-remotely)
