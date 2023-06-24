# Validating OpenAPI Definition

I have found a several tools, which work on the command line for validating a OpenAPI definition.

I need to try them out and see which one works best.

Alternatively there is the SwaggerUI editor and online editor and validator. See the separate [TIL](../swagger/edit_and_validate.md) on this.

## swagger-spec-validator (Javascript)

```bash
npm install -g swagger-spec-validator
```

On file argument:

```bash
swagger-spec-validator swagger.yaml
All OpenAPI/Swagger specs are valid.
```

Works also for the JSON format.

```bash
swagger-spec-validator swagger.json
All OpenAPI/Swagger specs are valid.
```

Via pipe:

```bash
cat swagger.yaml | swagger-spec-validator
All OpenAPI/Swagger specs are valid.
```

## openapi-spec-validator (Python)

```bash
pip install openapi-spec-validator
```

On file argument:

```bash
openapi-spec-validator openapi.yaml
OK
```

Works also for the JSON format.

```bash
openapi-spec-validator openapi.json
OK
```

Via pipe (_do note the dash_):

```bash
cat openapi.yaml | openapi-spec-validator -
OK
```

## Resources and References

- [Javascript: swagger-spec-validator](https://www.npmjs.com/package/swagger-spec-validator) - available on NPM
  - [GitHub repository for swagger-spec-validator](https://github.com/kevinoid/swagger-spec-validator)
- [Python: openapi-spec-validator](https://pypi.org/project/openapi-spec-validator/)
  - [GitHub repository for openapi-spec-validator](https://github.com/python-openapi/openapi-spec-validator)
- [Documentation for the openapi-spec-validator command line tool](https://openapi-spec-validator.readthedocs.io/en/latest/usage.html#command-line-tool)
