/*
 * 整数割り算の結果と余りを同時に求める関数を作成
 */
#include <stdio.h>

int input_int(int *pa);
void div_mod_int(int data1, int data2, int *syou, int *pamari);

int main(void)
{
    int data1, data2;
    int syou, amari;

    while (input_int(&data1) != EOF  && input_int(&data2) != EOF) {
        div_mod_int(data1, data2, &syou, &amari);
        printf("%d / %d = %d...%d\n\n", data1, data2, syou, amari);
    }

    return 0;
}

/*
 * 整数割り算を行い商と余りを求める
 * 引数　　int data1　:被除数 (割られる数)
 * 　　　　int data2　:除数 (割る数)
 * 　　　　int syou　 :除算結果　　data1 / data2
 * 　　　　int amari　:余り　　　　data1 % data2
 * 
 * 戻り値　void　　　　:なし
 */
void div_mod_int(int data1, int data2, int *psyou, int *pamari)
{
    *psyou  = data1 / data2;
    *pamari = data1 % data2;
}

/*
 * プロンプトを表示し、整数１つの入力を行う
 * 引数　　: データを格納する場所のアドレス
 * 戻り値　: scanfの戻り値と同じ
 * 　　　　　　(Ctrl+z[Enter]入力時はEOF)
 */
int input_int(int *pdata)
{
    printf("Input num : ");
    return scanf("%d", pdata);
}

/*Input num : 10
Input num : 3
10 / 3 = 3...1

Input num : 133
Input num : 21
133 / 21 = 6...7

Input num : 0
Input num : 5
0 / 5 = 0...0

Input num : -21
Input num : 3
-21 / 3 = -7...0

Input num : -10
Input num : 3
-10 / 3 = -3...-1

Input num : 5
Input num : 0
*/
