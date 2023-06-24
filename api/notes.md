# API Design Notes

These are notes on API design, not a guide.

## Use Hierarchy

Use the hierarchy of you data structure to communicate structure and relationships.

Do not do this

```json
{
    "person": {
        "person_firstname": "",
        "person_lastname": ""
    }
}
```

Do this

```json
{
    "person": {
        "firstname": "",
        "lastname": ""
    }
}
```

## Use Basic Types

Not all numbers might be numbers

```json
{
    "error": {
        "code": "3001",
        "message": "User Dave NOT allowed"
    }
}
```

- If you do not plan to do calculations on `code`, then let it be a string
- If you want to make numeric comparisons a number would be better but string comparisons can work, depending on the language used

## Do not use a fill in the blanks / partial data

Do not return partial data, communicate in absolutes

For example if we have a record with and ID and and a resource the client wants to link to the resource, which is not served by the front-end itself.

```json
{
    "id": "abc123def456",
    "resource": "abc123def456.pdf"
}
```

Link generated in front-end: `https://resources.example.com/abc123def456.pdf`, meaning that `https://resources.example.com/` is concatenated in the front-end.

If the we decide to service this from elsewhere, we need to deploy both a front-end and a back-end, instead communicate in absolutes.

```json
{
    "id": "abc123def456",
    "resource": "https://resources.example.com/abc123def456.pdf"
}
```

So if there is a change in the back-end, you do not have to deploy a front-end in tandem.

The back-end is responsible for the data, not the front-end.
