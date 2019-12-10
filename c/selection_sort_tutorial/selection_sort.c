#include <stdio.h>

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

int main () {
    int a[4];

    a[0] = 5;
    a[1] = 3;
    a[2] = 7;
    a[3] = 4;

    printf("Original:\n");
    for (int i = 0; i < 4; i++) {
        printf("%d position %d\n", a[i], i);
    }

    sort(a, 4);

    printf("Sorted:\n");
    for (int i = 0; i < 4; i++) {
        printf("%d position %d\n", a[i], i);
    }

    return 0;
}
