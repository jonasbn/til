# RTFM afplay

The official man-page, is _pretty_ useless, somebody did all the hard work of writing one.

```text
Command line afplay, August 2016.
---------------------------------

afplay -h

Usage:
afplay [option...] audio_file

Options: (may appear before or after arguments)
  {-v | --volume} VOLUME
    set the volume for playback of the file
  {-h | --help}
    print help
  { --leaks}
    run leaks analysis
  {-t | --time} TIME
    play for TIME seconds
  {-r | --rate} RATE
    play at playback rate
  {-q | --rQuality} QUALITY
    set the quality used for rate-scaled playback (default is 0 - low quality, 1 - high quality)
  {-d | --debug}
    debug print output

===============================================================================
Example of usage, (assumes afplay is in the $PATH):-
  afplay -v 0.5 -t 1.0 -r 0.5 -q 0.5 -d /path/to/soundfile.ext

  The ".ext" CANNOT be raw, RAW, as afplay does not have the switches or flags to cope with it.

  -v is a floating point value between 0.0, volume minimum, and 1.0, volume maximum.
     This is NOT a linear scaling but relative to a logarithmic output volume level,
     so do NOT assume a value 0.5 is literally half volume.
  -t is an integer OR floating point value of arbitrary length inside the full playing time of
     the file to be played. Value 0.0 is the same as not have having the -t flag in the command,
     in other words it becomes disabled.
  -r is a floating point value of 0.0 or practical limits of about 0.4 to 3.0.
     It is not really a RATE change at all but plays almost _exactly_ the same as the original
     sound but at a quicker or slower _speed_, the _frequencies_ are not altered to any extent
     but the time taken to go through the whole file can create some humourous effects.
     A value of 0.0 disables the -r switch.
  -q is a floating point value between 0.0 and 1.0. The audible results are purely subjective on
     a music file that has huge amounts of amplitude compression, ("LOUDNESS WARS" anyone?),
     so don't expect too much from this switch.
  -d is not really debug in its entirety but also a verbose mode and gives some technical data
     about the file being played.
  -- leaks is certainly a debug mode but requires username and password to give a file something
     like below:-
"""
Memory leak analysis of afplay (pid 497):
An admin user name and password is required to enter Developer Mode.
Admin user name (myhomefolder): myhomefolder
Password:
2016-08-19 13:40:55.587 leaks[499:4803] *** Symbolication:  libsystem_c.dylib
is the same in the target process as in the analysis process, but it was loaded
at a different address.  That means the dyld shared cache is not up to date,
which could affect system performance.  To update the dyld shared cache, run
'sudo update_dyld_shared_cache' and reboot.

Process:         afplay [497]
Path:            /usr/bin/afplay
Load Address:    0x104bcf000
Identifier:      afplay
Version:         ??? (???)
Code Type:       X86-64 (Native)
Parent Process:  bash [454]

Date/Time:       2016-08-19 13:40:55.307 +0100
OS Version:      Mac OS X 10.7.5 (11G63)
Report Version:  7

leaks Report Version:  2.0
Process 497: 4447 nodes malloced for 574 KB
Process 497: 0 leaks for 0 total leaked bytes.
"""
===============================================================================

  And finally......
  -h the quick help file at the top.

  The player is capable or playing a number of formats:-
  WAV, AAC, MP3, M4A, AIFC just to name but a few.
  A rawfile, RAW, is NOT catered for see above.

  A practical example:-
  This plays a time limited 1 second playable file at slightly reduced volume and at a slightly quicker
  speed where the quality is supposedly better than the default low and creates a verbose echo to screen.
"""
MyPrompt> afplay -v 0.5 -t 1 -r 1.5 -q 0.5 -d /Users/myhomefolder/Movies/test.aifc
Playing file: /Users/myhomefolder/Movies/test.aifc
Playing format: AudioStreamBasicDescription:  2 ch,  44100 Hz, 'lpcm' (0x0000000E) 24-bit big-endian signed integer
Buffer Byte Size: 132300, Num Packets to Read: 22050
Enable rate-scaled playback (rate = 1.50) using Time Domain algorithm
"""

I hope this is of help to all those new to the afplay command line audio player.
```

## Resources and References

- [Unofficial man-page](https://www.unix.com/os-x-apple-/267933-osx-afplay-command-line-audio-player-_manual_.html)
