# Scheduling with cron

Getting your head around the crontab syntax can be a little work.

I can recommend the following resources:

- [Crontab Guru][GURU]
- and the marvellous examples at: [Crontab Guru][GURUEXAMPLES]

One thing I have observed that I had not given much thought earlier is, that it is not easy to schedule something to run bi-weekly, you can do something along the lines of:

```
0 0 1,15 * * /path/to/script.sh
```

This runs:

- at: `00:00`
- on day-of-month: `1` and `15`

Alternatively you could do:

```
0 0 * * 1 [ $(( $(date +\%V) \% 2 )) -eq 0 ] && /path/to/script.sh
```

This is untried it should run:

- at: `00:00`
- Works well, but relies on ISO week numbers (reset yearly)
- Pick odd (`-eq 1`) or even (`-eq 0`) to choose your starting week

I really need to try this out, since I do not know if crontab can be programmatically configured like that, which would be really powerful.

## Resources and References

- [Crontab Guru][GURU]
- [Crontab Guru Examples][GURUEXAMPLES]

[GURU]: https://crontab.guru
[GURUEXAMPLES]: https://crontab.guru/examples.html
