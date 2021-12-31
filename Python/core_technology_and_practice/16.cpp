#include <iostream>
using namespace std;

// 交换2个变量的值
void swap(int& x, int& y){
    int temp;
    temp = x;
    x = y;
    y = temp;
    return;
}

int  main() {
    int a = 1;
    int b = 2;
    cout << "Before swap, value of a: " << a << endl;
    cout << "Before swap, value of b: " << b << endl;

    swap(a, b);
    cout << "After swap, value of a: " << a << endl;
    cout << "After swap, value of b: " << b << endl;
    return 0;
}
