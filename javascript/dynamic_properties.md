# Dynamic Properties

Short demonstration on how to add dynamic properties to a JavaScript object.

```javascript
var data = {
    'PropertyA': 1,
    'PropertyB': 2,
    'PropertyC': 3
};

data["PropertyD"] = 4;

// dialog box with 4 in it
alert(data.PropertyD);
alert(data["PropertyD"]);
```

I used this for an Exercism.io problem: ["ETL"](https://exercism.io/my/solutions/3e464ea7cdd44b3cb3ba109fd1c7143e)
:

```javascript
export const transform = (oldData) => {
    let newData = new Object()

    for (let [key, value] of Object.entries(oldData)) {
        value.forEach(element => {
            newData[element.toLowerCase()] = parseInt(key);
        });
    }

    return newData;
};
```

REF: [Exercism.io "ETL", solution](https://exercism.io/my/solutions/3e464ea7cdd44b3cb3ba109fd1c7143e)

## Resources and References

- [StackOverflow: "Is it possible to add dynamically named properties to JavaScript object?"](https://stackoverflow.com/questions/1184123/is-it-possible-to-add-dynamically-named-properties-to-javascript-object)
- [MDN: "Object"](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)
