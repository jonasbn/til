# Repeating an executable continuously

Reading arguments from the command line is quite useful:

```bash
#!/bin/bash
echo "the $1 eats a $2 every time there is a $3"
echo "bye:-)"
```

```bash
$ Command: ./script.bash dog bone moose
the dog eats a bone every time there is a moose
bye:-)
```

[Source: Wikia](http://how-to.wikia.com/wiki/How_to_read_command_line_arguments_in_a_bash_script)