# Tutorial on finding bug in C selection sort implementation

Input parameters (variables):

- `a` is a list of elements and will be modified
- `n` is the length of `a` and should be left intact and hence a constant

Local variables, meaning local to scope of function:

- `current`, could be limited to the relevant loop, since it is a loop counter
- `j`, could be limited to the relevant loop, since it is a loop counter
- `lowestindex`, temporary variable, could be limited to relevant loop
- `temp`, temporary variable, could be limited to relevant loop scope, since it is truly temporary

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
