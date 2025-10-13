#include <iostream>
using namespace std;
// Function with default arguments
void greet(string name = "Guest", int times = 1)
{
    for (int i = 0; i < times; i++) {
        cout << "Hello, " << name << "!" << endl;
    }
}

// Class to illustrate access specifiers
class DemoAccess {
private:
    int privateValue = 100;

protected:
    int protectedValue = 200;

public:
    int publicValue = 300;

    void showValues() {
        cout << "Private Value: " << privateValue << endl;
        cout << "Protected Value: " << protectedValue << endl;
        cout << "Public Value: " << publicValue << endl;
    }
};

int main()
{
    // Demonstrate default arguments
    greet();                 // Uses both default arguments
    greet("Anil");           // Uses default for 'times'
    greet("Ravi", 3);        // No default used

    // Demonstrate access specifiers
    DemoAccess obj;
    obj.showValues();                // Access through public function
    cout << "Direct Access to Public Value: " << obj.publicValue << endl;

    // The following would cause errors:
    // cout << obj.privateValue;
    // cout << obj.protectedValue;

    return 0;
}

