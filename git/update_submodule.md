# Updating a submodule

Working with submodules it not something I do a lot, so I tend to forget how to go about it - so here goes.

I expect you have initialized or want to initialize a submodule in your Git repository.

```bash
# Add the submodule initially
$ git submodule add ssh://bla example_submodule_directory
$ git submodule init
```

At some point in time you want to update it.

```bash
# Go to the submodule directory, do note the example is named naively for the purpose of demonstration
$ cd example_submodule_directory

# Check out desired branch
$ git checkout master
$ git pull

# Go back to your project root, your tree structure might be deeper, so this is just a basic example
$ cd ..

# Now you can commit these changes to your project
$ git commit -am "Pulled down update to submodule: example (example_submodule_directory)"
```

Source: [Stack Overflow](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin)
