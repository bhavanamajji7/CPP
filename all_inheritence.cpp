#include <iostream>
using namespace std;

// ----------------- Single Inheritance -----------------
class A {
public:
    void displayA() {
        cout << "This is class A (Base Class - Single Inheritance)" << endl;
    }
};

class B : public A {
public:
    void displayB() {
        cout << "This is class B (Derived from A - Single Inheritance)" << endl;
    }
};

// ----------------- Multiple Inheritance -----------------
class X {
public:
    void displayX() {
        cout << "This is class X (Base Class for Multiple Inheritance)" << endl;
    }
};

class Y {
public:
    void displayY() {
        cout << "This is class Y (Base Class for Multiple Inheritance)" << endl;
    }
};

class Z : public X, public Y {
public:
    void displayZ() {
        cout << "This is class Z (Derived from X and Y - Multiple Inheritance)" << endl;
    }
};

// ----------------- Multi-level Inheritance -----------------
class Parent {
public:
    void displayParent() {
        cout << "This is Parent Class (Multi-level Inheritance)" << endl;
    }
};

class Child : public Parent {
public:
    void displayChild() {
        cout << "This is Child Class (Derived from Parent)" << endl;
    }
};

class GrandChild : public Child {
public:
    void displayGrandChild() {
        cout << "This is GrandChild Class (Derived from Child - Multi-level)" << endl;
    }
};

// ----------------- Hierarchical Inheritance -----------------
class Base {
public:
    void displayBase() {
        cout << "This is Base Class (Hierarchical Inheritance)" << endl;
    }
};

class Derived1 : public Base {
public:
    void displayDerived1() {
        cout << "This is Derived1 (from Base)" << endl;
    }
};

class Derived2 : public Base {
public:
    void displayDerived2() {
        cout << "This is Derived2 (from Base)" << endl;
    }
};

// ----------------- Hybrid Inheritance -----------------
class M {
public:
    void displayM() {
        cout << "This is class M (Base of Hybrid Inheritance)" << endl;
    }
};

class N : public M {
public:
    void displayN() {
        cout << "This is class N (Derived from M)" << endl;
    }
};

class O {
public:
    void displayO() {
        cout << "This is class O (Independent Base for Hybrid Inheritance)" << endl;
    }
};

class P : public N, public O {
public:
    void displayP() {
        cout << "This is class P (Derived from both N and O - Hybrid)" << endl;
    }
};

// ----------------- Main Function -----------------
int main() {
    cout << "\n--- Single Inheritance ---" << endl;
    B;
    b.displayA();
    b.displayB();

    cout << "\n--- Multiple Inheritance ---" << endl;
    Z;
    z.displayX();
    z.displayY();
    z.displayZ();

    cout << "\n--- Multi-level Inheritance ---" << endl;
    GrandChild gc;
    gc.displayParent();
    gc.displayChild();
    gc.displayGrandChild();

    cout << "\n--- Hierarchical Inheritance ---" << endl;
    Derived1 d1;
    Derived2 d2;
    d1.displayBase();
    d1.displayDerived1();
    d2.displayBase();
    d2.displayDerived2();

    cout << "\n--- Hybrid Inheritance ---" << endl;
    P;
    p.displayM();
    p.displayN();
    p.displayO();
    p.displayP();

    return 0;
}

