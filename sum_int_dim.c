/*
 * int型配列と関数
 *    合計を返す関数　sum_int_dimを作成する
 */
#include <stdio.h>

void print_int_dim(int *pa, int n);
int  sum_int_dim(int *pa, int n);

int main(void)
{
    // int a[] = {5, 9, 6, 3, 4};
    int a[] = {-2, -4, -6, 9, 11};
    int n;
    int sum;

    n = 5;

    sum = sum_int_dim(a, n);
    printf("合計 = %d\n", sum);

    print_int_dim(a, n);

    return 0;
}
/*
 * 整数型配列の内容ｎ件の合計を返す
 * 　int sum_int_dim(int *pa, int n)
 *  引数　　: int *pa　　: 整数型配列
 *  　　　　: int n  　　: 表示するデータ数
 *  戻り値　: int   　　: なし
 */
int sum_int_dim(int *pa, int n)
{
    int  sum = 0;
    int *pend;
    pend = pa + n;
    while (pa < pend) {
        sum += *pa;
        pa++;
    }
    return sum;
}
void print_int_dim(int *pa, int n)
{
    int *pend;

    pend = pa + n;
    while (pa < pend) {
        printf("%d ", *pa);
        pa++;
    }
    printf("\n");

    return;
}