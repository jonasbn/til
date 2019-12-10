# Tutorial on finding bug in C selection sort implementation

```c
void sort (
    int a[],
    int n) {

    int current, j, lowestindex, temp;

    for (current = 0; current < n-1; current++) {
        lowestindex = current;

        for (j = current+1; j < n; j++) {
            if (a[j] < a[current]) {
                lowestindex = j;
            }
        }

        if (lowestindex != current) {
            temp = a[current];
            a[current] = a[lowestindex];
            a[lowestindex] = temp;
        }
    }
}
```

## References

- [Official website for the book](http://www.findthebug.com/)
