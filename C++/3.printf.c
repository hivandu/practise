#include <stdio.h>

int main() {
    int n;
    char str[100]  = {0};
    scanf("%d", &n);  // stdin:0
    printf("n = %d\n", n); // stdout:1 stderr:2
    sprintf(str, "%d.%d.%d.%d", 192, 168,  1, 2);
    printf("str = %s\n", str);
    FILE *fout = fopen("output", "w");
    fprintf(stdout, "stdout = %s\n", str);
    fprintf(stderr, "stderr = %s\n", str);

    return 0;
}