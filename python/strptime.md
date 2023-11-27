# strptime

I actually used this for a reference for solving some challenges for `jq` and I was reading some documentation which referenced `strftime`, when _googling_ I found this Python resource, which helped me, eventhough I should propably have found one in JavaScript anyway, this one worked for me.

`strptime` can convert a string in a given format to a DateTime object.

```python
from datetime import datetime

date_string = "21 June, 2018"

print("date_string =", date_string)
print("type of date_string =", type(date_string))

date_object = datetime.strptime(date_string, "%d %B, %Y")

print("date_object =", date_object)
print("type of date_object =", type(date_object))
```

## Resources and References

- [strptime resource]https://www.programiz.com/python-programming/datetime/strptime#google_vignette)
