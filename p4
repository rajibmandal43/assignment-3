#include <bits/stdc++.h>
using namespace std;
class Complex {
private:
    double real, imag;
public:
    Complex(double r = 0, double i = 0) : real(r), imag(i) {}

    friend Complex operator+(const Complex& c1, const Complex& c2);

    friend Complex operator*(const Complex& c1, const Complex& c2);

    Complex& operator=(const Complex& c2);

    void display(){
        cout << real << " + " << imag << "i" << endl;
    }
};

Complex operator+(const Complex& c1, const Complex& c2) {
    return Complex(c1.real + c2.real, c1.imag + c2.imag);
}

Complex operator*(const Complex& c1, const Complex& c2) {
    return Complex(c1.real * c2.real - c1.imag * c2.imag,c1.real * c2.imag + c1.imag * c2.real);
}

Complex& Complex::operator=(const Complex& c2) {
    if (this != &c2) { // Prevent self-assignment
        this->real = c2.real;
        this->imag = c2.imag;
    }
    return *this;
}

int main() {
    Complex c1(1, 2);
    Complex c2(3, 4);
    Complex c3;
    
    c3 = c1 + c2;
    cout << "Addition: ";
    c3.display();
    
    c3 = c1 * c2;
    cout << "Multiplication: ";
    c3.display();
    
    Complex c4;
    c4 = c3;
    cout << "Copy Operation: ";
    c4.display();

    return 0;
}
