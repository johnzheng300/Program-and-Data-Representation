/*
Name:	John Zheng
ID:		jz5pt
Date:	3/25/19
File:	mathfun.cpp
*/

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product(int, int);
extern "C" int power(int, int);

int main() {
	int x, y, product_sum, pow;
	cout << "Please enter x:	";
	cin >> x;
	if (x < 0) {
		cout << "Please enter a positive number" << endl;
		return 1;
	}
	cout << "Please enter y:	";
	cin >> y;
	if (y < 0) {
		cout << "Please enter a positive number" << endl;
		return 1;
	}
	
	product_sum = product(x,y);
	cout << "The product of the two integers is: " << product_sum << endl;

	pow = power(x,y);
	cout << "x to the y power is: " << pow << endl;

	return 0;
}
