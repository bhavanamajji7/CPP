#include <iostream>
using namespace std;
// Inline function to calculate square of a number
inline int square(int x) {
    return x * x;
}
// Function Overloading examples
int add(int a, int b) {
    return a + b;
}
double add(double a, double b) {
    return a + b;
}
int add(int a, int b, int c) {
    return a + b + c;
}
int main() {
    cout << "Inline Function Example:" << endl;
    cout << "Square of 5 = " << square(5) << endl;
    cout << "Square of 10 = " << square(10) << endl;

    cout << "\nFunction Overloading Example:" << endl;
    cout << "Addition of 2 and 3 = " << add(2, 3) << endl;
    cout << "Addition of 2.5 and 3.7 = " << add(2.5, 3.7) << endl;
    cout << "Addition of 1, 2 and 3 = " << add(1, 2, 3) << endl;

    return 0;
}

