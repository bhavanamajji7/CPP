#include <iostream>
using namespace std;

// Template Class
template <class T>
class Calculator {
    T num1, num2;
public:
    Calculator(T n1, T n2) {
        num1 = n1;
        num2 = n2;
    }

    void displayResult() {
        cout << "Numbers: " << num1 << " and " << num2 << endl;
        cout << "Addition: " << num1 + num2 << endl;
        cout << "Subtraction: " << num1 - num2 << endl;
        cout << "Multiplication: " << num1 * num2 << endl;
        cout << "Division: " << num1 / num2 << endl;
        cout << "--------------------------" << endl;
    }
};

int main() {
    // Integer type
    Calculator<int> intCalc(10, 5);
    cout << "Integer results:" << endl;
    intCalc.displayResult();

    // Float type
    Calculator<float> floatCalc(10.5, 5.2);
    cout << "Float results:" << endl;
    floatCalc.displayResult();

    // Double type
    Calculator<double> doubleCalc(20.5, 4.5);
    cout << "Double results:" << endl;
    doubleCalc.displayResult();

    return 0;
}

