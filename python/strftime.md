# strftime

I was working with `jq` when I was reading some documentation which referenced `strftime`, when _googling_ I found this Python resource, which helped me, eventhough I should propably have found one in JavaScript anyway, this one worked for me.

`strftime` can convert a DateTime object to a string in a given format.

```python
from datetime import datetime

now = datetime.now() # current date and time

year = now.strftime("%Y")
print("year:", year)

month = now.strftime("%m")
print("month:", month)

day = now.strftime("%d")
print("day:", day)

time = now.strftime("%H:%M:%S")
print("time:", time)

date_time = now.strftime("%m/%d/%Y, %H:%M:%S")
print("date and time:",date_time)
```

## Resources and References

- [strftime resource](https://www.programiz.com/python-programming/datetime/strftime)
