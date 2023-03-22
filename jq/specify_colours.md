# Specify Colours

TODO

```shell
export JQ_COLORS="5;36:0;39:0;39:0;39:0;32:1;39:1;39"; curl -X GET "https://devapi.hussyn.pro/api/v1/admin/customers/JQfQRovP2XBS/addresses" -H "accept: application/json" -H "Authorization: TEST-SWAGGER-API-KEY" |jq '.data.addresses[] | select(.dawa_street_name|test("Vognserup"))'
```
