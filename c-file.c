#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall SumNegativeNumber(int[], int);

#ifdef __cplusplus
}
#endif

int main() {
    system("cls");
    int array[10] = {2, -1, 3, -4, 5, -6, -7, -8, -9, 10};
    printf("The array is: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", array[i]);
    }
    int size = sizeof(array) / sizeof(array[0]);
    int sum = SumNegativeNumber(array, size);
    printf("\nSum of negative numbers: %d\n", sum);
    return 0;
}
