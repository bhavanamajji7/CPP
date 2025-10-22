#include <iostream>
using namespace std;
// Function template to find maximum of two values
template <class T>
T getMax(T a, T b) {
    return (a > b) ? a : b;
}
int main() {
    cout << "Maximum of 10 and 20 is: " << getMax(10, 20) << endl;
    cout << "Maximum of 5.5 and 2.3 is: " << getMax(5.5, 2.3) << endl;
    cout << "Maximum of 'A' and 'Z' is: " << getMax('A', 'Z') << endl;
    return 0;
}

