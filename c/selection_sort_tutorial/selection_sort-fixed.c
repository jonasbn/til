#include <stdio.h>

# TODO: Fix this, it is still buggy

void sort (
    int a[],
    int n) {

    for (int current = 0; current < n-1; current++) {
        int lowestindex = current;

        for (int j = current+1; j < n; j++) {
            if (a[j] < a[current]) {
                lowestindex = j;
            }
        }

        if (lowestindex < current) {
            int temp = a[current];
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

    printf("\nSorted:\n");
    for (int i = 0; i < 4; i++) {
        printf("%d position %d\n", a[i], i);
    }

    return 0;
}
