/*
Name:	John Zheng
ID:		jz5pt
Date:	2/11/19
File:	prelab4.cpp
*/

#include <iostream>
#include <string>
#include <limits.h>
using namespace std;

void sizeOfTest() {
cout << "Size of int: " << sizeof(int) << endl;
cout << "Size of unsigned int: " << sizeof(unsigned int) << endl;
cout << "Size of float: " << sizeof(float) << endl;
cout << "Size of double: " << sizeof(double) << endl;
cout << "Size of char: " << sizeof(char) << endl;
cout << "Size of bool: " << sizeof(bool) << endl;
cout << "Size of int*: " << sizeof(int*) << endl;
cout << "Size of char*: " << sizeof(char*) << endl;
cout << "Size of double*: " << sizeof(double) << endl;
}

void outputBinary(unsigned int llama) {
	int alpaca = llama;
	string res = "";
	for(int x = 0; x < 8; x++) {
		for(int y = 0; y < 4; y++) {
				switch(alpaca % 2) {
					case(0):
						res.insert(0, "0");
						break;
					case(1):
						res.insert(0, "1");
						break;
				}
				alpaca = alpaca >> 1;
			}
			res.insert(0, " ");
	}
	cout << res << endl;
}

void overflow() {
	unsigned int n = UINT_MAX;
	n = n + 1;
	cout << n << endl;
}

int main() {
	int x;
	cout << " Please enter an integer: ";
	cin >> x;
	sizeOfTest();
	outputBinary(x);
	overflow();					
	return 0;	
	cout << "This happened because the max value that an int can represent is 32 1's and adding 1 to that int overflows it and resets all the 1's to 0's." << endl;
}
