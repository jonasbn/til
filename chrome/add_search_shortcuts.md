# Add search shortcuts to Chrome

Using customized search engines in Chrome is really powerful and can speed up you day to way productivity.

The idea is to have sort of a shortcut for URLs where they share a common pattern. This can be useful for:

- Perl distributions and documentation on MetaCPAN or search.cpan.org if you use that site
- RT tickets on CPAN bug tracker or your own RT installation
- Jira Issues
- Oracle Error Numbers
- RFCs

All you have to do is edit the Omnibox (URL/address field) in Chrome. Right-click on the box and choose 'Edit Search Engines'. Under 'Other search engines' you can then add your own.

1. In the first column you add a label
2. In the second a shortcut
3. And in the third a URL including a %s, which will be the placeholder where our parameter (search string) will be placed.

So if we define:

MetaCPAN as `meta` pointing to the address: `http://metacpan.org/search?q=%s`

Now the Omnibox allows us to write: `meta perl::critic` and we are sent to the page holding information on Perl::Critic at MetaCPAN.

Here are some of the shortcuts I use and have used regularly:

## Perl Distributions and Documentation

You simply provide the package name of the Perl distribution:

Suggested keyword: `cpan` and URL: `http://search.cpan.org/search?mode=module;query=%s`

Suggested keyword `pod` and URL: `http://search.cpan.org/perldoc/%s`

## Oracle Error Numbers

For getting information fast on the Oracle error that bites you:

Suggested keyword `ora`and URL: `http://ora%s.ora-code.com/`

## Request Tracker Numbers

For getting fast to the RT you want to read:

Suggested keyword `rt` and URL: `https://rt.cpan.org/Public/Bug/Display.html?id=%s`

## Jira Issues

For getting fast to the Jira issue you want to read:

Suggested keyword `jira` and URL: `https://url_of_your_jira_instance/browse/%s`

## RFC Standards Documents

For easy access to RFCs:

Suggested keyword `rfc` and URL: `http://datatracker.ietf.org/doc/%s`

## Twitter

Suggested keyword `twitter` and URL: `http://twitter.com/search?q=%s`

**Do note** that the keyword should not resemble something you want to _Google_ often, since the Omnibox is magical and acts as a search field which is what this tip uses.
