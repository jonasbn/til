# stat

Is a tool that you come across once in while.

`stat` has a format, where these are the expressions resemble `printf`.

> If no options are specified, the default format is "%d %i %Sp %l %Su %Sg %r %z \"%Sa\" \"%Sm\" \"%Sc\" \"%SB\" %k %b %#Xf %N".
>

```shell
stat /tmp/bar
0 78852 -rw-r--r-- 1 root wheel 0 0 "Jul  8 10:26:03 2004" "Jul  8 10:26:03 2004" "Jul  8 10:28:13 2004" "Jan  1 09:00:00 1970" 16384 0 0 /tmp/bar
```
