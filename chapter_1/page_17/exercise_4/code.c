#include <stdio.h>

struct data 
{
    int n1;
    int n2; 
};

struct data test_return(void) {
    struct data test_object;
    test_object.n1 = 7;
    test_object.n2 = 5;
    return test_object;
}

int main (int argc, char *argv[] ) 
{
    struct data ret;
    ret = test_return();
    int res = (ret.n1 + ret.n2);
    return res;
}
