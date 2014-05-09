#include <stdio.h>

char* black_out(char *str, char ch) 
{
    /* find length of string */
    int len = 0;
    char *str_cpy = str;
    while (*str_cpy != '\0') {
        len++;
        str_cpy++;
    }
    /* set each character of string to <ch> */
    while (len-- > 0) {
        str[len] = ch;
    }
    return str;
}

int main (int argc, char *argv[] ) 
{
    if (argc != 3 ) 
        printf("usage: %s string character", argv[0]);
    else {
        char *test2 = black_out(argv[1], *argv[2]);
        printf("%s\n", test2);
    }
}
