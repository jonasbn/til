# Making PRs against a Swagger UI repository

Lesson learned on how to make PRs against a Swagger UI repository.

You should **not** make the changes directly towards `swagger-v2.json` and `swagger-v2.yaml` files, or whatever the files with the final definitions are called.

As these files are automatically generated via the tooling.

You **have to** make the changes against the `swagger/specs/index.spec.yaml` file and then the changes will be reflected in `swagger-v2.json` and `swagger-v2.yaml` file, when the tools are run.

TODO - add more details on the tools.

Thanks to my colleague Sumit for teaching me.

## Resources and References

- [Swagger UI](https://swagger.io/tools/swagger-ui/)
- [Swagger Editor](https://swagger.io/tools/swagger-editor/)
