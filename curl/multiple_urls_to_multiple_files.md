# Multiple URLs to Multiple Files

Okay I ran into this issue at work. We have a service that provides a list of URLs. I needed to download all of them and save them to disk. I could have written a script to do this, but I wanted to do it using `curl`. I found a way to do it with `curl` and I wanted save this as a TIL since it was a hard earned lesson.

You can get curl to download multiple files like this:

```bash
curl http://www.abc.com/123/{def}/{ghi}/{jkl}.mno -o '#1_#2_#3.mno'
```

The tools are a combination of the curlys `{` and `}`, which markup the URL and the `#N` where `N` in the number indicating the sequence of the curlys. The `-o` flag is used to specify the output file name.

I have access to a service that sends me a list of URLs in a JSON document. I can retrieve these using `curl` and `jq` in combination and I can then use `xargs` and `curl` to download all the files.

```bash
curl -X GET 'workservice.servingjsonwithlistofurls.plz' \
     | jq '.data.[][].url' \
     | xargs -n1 curl -t -X GET -o '#1'
```

Unfortunately, the above command does not work, since the URLs do not contain the necessary curlys. I attempted in multiple ways but without luck.

I then decided to use my trusted tool: Perl, and I came up with the following command line:

```bash
curl -X GET 'workservice.servingjsonwithlistofurls.plz' \
     | jq '.data.[][].url' \
     | perl -e 'while (<>) { s/(.*\/)(.*)(\/xl)/$1\{$2\}$3/; print }' \
     | xargs -n1 curl -t -X GET -o '#1'
```

The URLs from the service are in the format `http://www.abc.com/123/def/xl`. The Perl script will convert this to `http://www.abc.com/123/{def}/xl`. Then they can be combined with `curl`, which then downloads the files one at a time and save them to disk.

I hope this TIL will help you in your work with `curl` and downloading multiple files from a list of URLs.

_Nothing a one-liner cannot solve in a few hours of work, that could be accomplished in a few minutes manually._

## Resources and References

- [StackOverflow: Running programs in parallel using xargs](https://stackoverflow.com/questions/28357997/running-programs-in-parallel-using-xargs)
- [Awesome Guide on Perl one-liners](https://www.ccg.unam.mx/~vinuesa/tlem/pdfs/TPR_one-liners.pdf) (PDF)
- [StackExchange: Write output of wget or curl to a custom filename based on the url](https://unix.stackexchange.com/questions/91570/write-output-of-wget-or-curl-to-a-custom-filename-based-on-the-url)
