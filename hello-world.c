#include <stdio.h>

int main(){
    int result = printf("hello world\n");
    if( result != 12 ) return -1;
    return 0;
}