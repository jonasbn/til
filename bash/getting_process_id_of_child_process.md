# Getting Process-id of a Child Proces

Implementing parallel processing is possible in `bash`. You can put a job in the background with the `&` on the commandline and in your script.

You can obtain the id of the child proces, by referring to `$!` and the parent proces id using `$$`.

I use this simple trick to play sounds for log running jobs providing [audible feedback](https://lastmover.wordpress.com/2018/08/26/audible-feedback/).

The basic prototype looks like the following, a script that will run for ever, emitting an alive beep, we call this `alive.sh`.

```bash
#!/bin/bash

while [ 1 ]; do

/usr/bin/afplay $HOME/Sounds/alive.wav;

sleep 2;

done

exit 0
```

Our parent script doing _stuff_, which the child process beeps away.

```bash
#!/bin/bash

alive-beep.sh &

sleep 6;

kill $!

/usr/bin/afplay $HOME/Sounds/success.wav

exit 0
```

Do note that the scope of the `$!` has to be watched closely, since forking more that one child results on more than one proces-id, yes it sounds logical, but can be _confusing_ and not quite obvious, when you are experimenting.

Reference: [StackOverflow](https://stackoverflow.com/questions/17356591/how-to-get-process-idpid-from-forked-child-process-in-shell-script)
Reference: [Blog post: Audible Feedback](https://lastmover.wordpress.com/2018/08/26/audible-feedback/) 
