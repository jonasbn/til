# Read Markdown in Terminal

I often have the need for quickly reading Markdown on the command line.

Luckily there are tools like `mdless`.

BUT! there are several implementations.

1. [`mdless` written in Ruby][mdlessruby] by Brett Terpstra, which can be installed via `npm`, does not particularly beautifully, have testet in the README of this repository
1. [`mdless` written in JavaScript][mdlessjs] by Michael Burkman, which can be installed as a Gem, does not render code snippets
1. [`mdr`][mdr] testet with the README of this repository, did not render fast enough for my ... patience

And there are propably plenty of other alternatives out there

None of the ones I have tested have been completely _satisfying_

But I still have the need, so I will keep monitoring the _market_ and continuously evaluate what is out there and hopefully will some of the listed implementations evolve to be pretty, useful and fast :-)

Please check [Reddit] for more recommendations in this field.

## Resources and References

- [`mdless`][mdlessruby] written in Ruby by Brett Terpstra, see also the [website](https://brettterpstra.com/projects/mdless/)
- [`mdless`][mdlessjs] written in JavaScript by Michael Burkman
- [`mdp`][mdp] by Michael Göhler written in C, which is for Markdown presentations
- [`mdr`][mdr] by Jake (or Mr Chimp) also written in JavaScript
- [Reddit][reddit]

[mdlessjs]: https://github.com/ttscoff/mdless
[mdlessruby]: https://github.com/MikeyBurkman/mdless
[mdr]: https://github.com/mrchimp/mdr
[mdp]: https://github.com/visit1985/mdp
[reddit]: https://www.reddit.com/r/commandline/comments/3xgd2w/good_markdown_viewer_in_terminal/
