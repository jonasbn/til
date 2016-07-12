# Use shell for layer

If you have a build that somehow fails you can with luck log in and inspect the file system of the last known working layer, like so:

```bash
$ docker run --rm -it <id_last_working_layer> bash -il
```

Do read the rest of the Stack Oveflow entry, it holds a lot of good information.

[Source: Stack Overflow](http://stackoverflow.com/questions/26220957/how-can-i-inspect-the-file-system-of-a-failed-docker-build)
