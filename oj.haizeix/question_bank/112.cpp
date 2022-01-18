#include <stdio.h>
#include <string.h>

int main() {
    char str[12];
    scanf("%s", str);

    if(strcmp(str, "a") == 0) {
        printf("It is good");
    } else if (strcmp(str, "b") == 0) {
        printf("OMG");
    } else if (strcmp(str, "c") == 0) {
        printf("Yes!");
    } else {
        printf("wrong!");
    }
    return 0;
}