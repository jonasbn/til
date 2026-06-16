# MCP

Model Context Protocol (MCP) is a way to integrate with tooling when doing generative AI work.

This is an awesome list of interesting MCP servers and a registry.

## GitHub MCP server

Installing the GitHub MCP server for Claude is quite easy.

1. Create an access token
2. Add the token to an `.env` file

```text
GITHUB_PAT=your_token_here
```

3. Run the following command:

```bash
export GITHUB_PAT="$(grep '^GITHUB_PAT=' .env | cut -d '=' -f2-)"
claude mcp add-json github '{"type":"http","url":"https://api.githubcopilot.com/mcp","headers":{"Authorization":"Bearer '"$GITHUB_PAT"'"}}'
```

The entire guide is included in [the GitHub MCP repository documentation](https://github.com/github/github-mcp-server/blob/main/docs/installation-guides/install-claude.md)

## Resources and References

- [List of MCP servers](https://github.com/modelcontextprotocol/servers)
- [GitHub MCP Registry](https://github.com/mcp?page=1)
