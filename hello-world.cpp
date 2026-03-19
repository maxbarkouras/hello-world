// C++ hello world
#include <iostream>

int main(){
    std::cout << "hello world\n";
    if( std::cout.fail() ) return -1;
    return 0;
}