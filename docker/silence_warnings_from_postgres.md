# Silence Warnings from PostgreSQL

If you observer a plethora of warnings in your PostgreSQL Docker setup like:

```
FATAL: role "root" does not exist
```

If these errors are emitted from the PostgreSQL _healthcheck_, they can be
silenced by adding the user parameter to the health check command for `pg_isready`
in your `docker-compose.yml` file.

```
healthcheck:
   test: ["CMD-SHELL", "pg_isready -U postgres"]
   interval: 30s
   timeout: 30s
   retries: 3
```

This works for official PostgreSQL Docker images, where a `postgres` user is
created, adjust to your own settings accordingly

Source: [GitHub issue describing the symptom](https://github.com/peter-evans/docker-compose-healthcheck/issues/4)

Source: [GitHub commit describing the remedy](https://github.com/peter-evans/docker-compose-healthcheck/pull/5/commits/4057d042cf5868f806f7fd967fcba65558eb3e50)
