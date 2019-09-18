/*
Name:	John Zheng
ID:		jz5pt
Date: 	2/12/19
File: 	inlab4.cpp
*/

#include <iostream>
#include <limits.h>
#include <float.h>
using namespace std;

void maxValue() {
	cout << "The max value of int: " << INT_MAX << endl; 
	cout << "The max value of unsigned int: " << UINT_MAX << endl; 
	cout << "The max value of float: " << FLT_MAX << endl; 
	cout << "The max value of double: " << DBL_MAX << endl; 
	cout << "The max value of char: " << CHAR_MAX << endl; 
}

void hexOut() {
	int a = 0;
	unsigned int b = 0;
	float c = 0.0;
	double d = 0.0;
	char e = '0';
	bool f = false;
	int* g = NULL;
	char* h = NULL;
	double* i = NULL;
	int j = 1;
	unsigned int k = 1;
	float l = 1.0;
	double m = 1.0;
	char n = '1';
	bool o = true;

	cout << "the hexidecimal of 0 is: " << hex << a << endl;
	cout << "the hexidecimal of 0 is: " << hex << b << endl;
	cout << "the hexidecimal of 0.0 is: " << hex << c << endl;
	cout << "the hexidecimal of 0.0 is: " << hex << d << endl;
	cout << "the hexidecimal of '0' is: " << hex << e << endl;
	cout << "the hexidecimal of false is: " << hex << f << endl;
	cout << "the hexidecimal of int* NULL is: " << hex << g << endl;
	//cout << "the hexidecimal of char* NULL is: " << hex << h << endl;
	//cout << "the hexidecimal of double* NULL is: " << hex << i << endl;

	cout << "the hexidecimal of 1 is: " << hex << j << endl;
	cout << "the hexidecimal of 1 is: " << hex << k << endl;
	cout << "the hexidecimal of 1.0 is: " << hex << l << endl;
	cout << "the hexidecimal of 1.0 is: " << hex << m << endl;
	cout << "the hexidecimal of '1' is: " << hex << n << endl;
	cout << "the hexidecimal of true is: " << hex << o << endl;
}

int main() {
	bool b = true;
	char c = 'c';
	int i = 9;
	float f = 1.0;
	double d = 1.0;
	int* x = NULL;
	cout << "b: " << b << endl;
	cout << "c: " << c << endl;
	cout << "i: " << i << endl;
	cout << "d: " << d << endl;
	cout << "x-pointer: " << x << endl;
	
	int IntArray[10];
	char charArray[10];
	int IntArray2D[6][5];
	char CharArray2D[6][5];
	cout << "The address of (IntArray2D[2][3]): " << &IntArray2D[2][3] << endl;
	cout << "pointer expression: " << (&IntArray2D[0][0] + (5 * 2) + 3) << endl;

	maxValue();
	hexOut();
	return 0;
}
