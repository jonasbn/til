# Specify User-Agent

Once in a while I have experienced not being able to access some site using `curl`, but it works in your regular browser.

This mean that somebody blocks `curl` since they assume it is a bot or something similar.

Telling the website, that your `curl` is as very easy and `curl` can pretend to be another client, which demonstrates the stupidity in attempting to block based on the User-Agent.

`curl` has a User-Agent along the lines of:

- `User-Agent: curl/7.79.1`

All you have to do is specify another User-Agent like:

- `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36`

The following command should do the job:

- `curl -I -X GET -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36"` `<url>`

I am by no means a hacker, but this is like the cheapest and easiest hack in the book.

And this is just circumvention of _client discrimination_.

## Resources and References

- [`reqbin.com`: Setting the User-Agent for Curl Request](https://reqbin.com/req/c-ekublyqq/curl-user-agent)
- [`zenrows.com`: Curl User-Agent](https://www.zenrows.com/blog/curl-user-agent#what-is-curl-user-agent)
