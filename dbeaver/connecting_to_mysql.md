# Connecting to MySQL

If you want to connect DBeaver to MySQL you might observe the following error:

> Public Key Retrieval is not allowed

I did.

The solution is to allow "Public Key Retrieval".

This can be done in the DBeaver settings.

1. Right click your connection
1. Choose "Edit Connection"
2. On "Connection settings, click on: "Driver Settings"
3. Click on: "Connection properties" to disclose this
4. Change property allowPublicKeyRetrieval to `true` from: `false`

And you should be good to go.

For visuals, do see the resource linked below.

## Resources and References

- [StackOverflow: "Connection between DBeaver & MySQL"](https://stackoverflow.com/questions/61749304/connection-between-dbeaver-mysql)
