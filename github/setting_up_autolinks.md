# Setting Up Autolinks

I do not know how this feature could go unoticed by me. But just as for the browser trick with the custom search which I use for tickets in Jira.

- [Add search shortcuts in Chrome](chrome/add_search_shortcuts.md)

You can have GitHub automatically create links when you mention ticket numbers following a certain pattern.

In a given repository go to "Settings", in the bottom of the menu on the left there is a link under "Integrations" named: "Autolink references".

1. Click "Add autolink reference"
2. Specify whether it is numeric (0-9) or alphanumeric (a-z0-9), these are not case sensitive
3. Set your reference prefix: e.g. `TICKET-` / `JIRA-`
4. Set your target URL: `https://example.com/TICKET?query=<num>`

Now you just write: `TICKET-123` in an issue and it becomes a link automatically and you can even have several, here are some suggestions from the [Chrome TIL on search shortcuts](chrome/add_search_shortcuts.md).

And as outlined on the settings page:

- Reference prefix: JIRA-
- Target URL: https://jira.example.com/issue?query=<num>
- Preview: JIRA-123 is converted to https://jira.example.com/issue?query=123

I have something along the lines of (ticket is an example):

- Numeric
- Prefix: `TICKET-`
- URL: `https://domutech.atlassian.net/browse/TICKET-<num>`

## RFC Standards Documents

For easy access to RFCs:

- Numeric as RFCs are plain numeric
- Prefix: `RFC-`
- URL: `http://datatracker.ietf.org/doc/RCF-<num>`

## CVE Records

For linking to CVEs:

- Alphanumeric as CVEs are formatted as: `CVE-2026-58102`
- Prefix: `CVE-`
- URL: `https://www.cve.org/CVERecord?id=CVE-<num>`

> [!WARNING]
> I am not sure this one works as the alphanumeric range does not include `-` (hyphen.
> So for now this will require some testing

## Resources and References

- [GitHub Documentation](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/autolinked-references-and-urls)
- [GitHub Documentation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/managing-repository-settings/configuring-autolinks-to-reference-external-resources)
