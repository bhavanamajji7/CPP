
#include <iostream>
using namespace std;

class Test {
    int x;
public:
    Test(int x) {
        this->x = x; // Resolving ambiguity
    }
    void show() { cout << "Value of x: " << this->x << endl; }
};

int main() {
    Test t(50);
    t.show();
    return 0;
}

