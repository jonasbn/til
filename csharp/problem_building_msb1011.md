# Problem building: "MSBUILD : error MSB1011"

I installed the dotnet SDK version 9 and attempting to build a hello world CLI application from the Exercism C# track.

```shell
dotnet test
```

I just got this error:

```text
MSBUILD : error MSB1011: Specify which project or solution file to use because this folder contains more than one project or solution file.
```

Apparently the build process generated the file: `hello-world.sln`

Which does not balance with the rest of the contents of the directory:

```
bin
HelloWorld.cs
HelloWorld.csproj
hello-world.sln
HelloWorldTests.cs
HELP.md
obj
README.md
```

I attempted a rename of the file from: `hello-world.sln` to: `HelloWorld.sln` after reading the a question and answers on [StackOverflow](https://stackoverflow.com/questions/57225921/msbuild-error-msb1011-specify-which-project-or-solution-file-to-use-because-t).

So with the rename the directory looked as follows:

```
bin
HelloWorld.cs
HelloWorld.csproj
HelloWorld.sln
HelloWorldTests.cs
HELP.md
obj
README.md
```

And it worked out.

## Resources and References

- [StackOverflow](https://stackoverflow.com/questions/57225921/msbuild-error-msb1011-specify-which-project-or-solution-file-to-use-because-t)
