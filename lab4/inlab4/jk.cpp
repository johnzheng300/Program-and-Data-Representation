
#include <iostream>

using namespace std;

void worksheet() {
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

	cout << "zero is stored as (in hex) for int: " << hex << a << endl;	
	cout << "zero is stored as (in hex) for unsigned int: " << hex << b << endl;
	cout << "zero is stored as (in hex) for float: " << hex << c << endl;
	cout << "zero is stored as (in hex) for double: " << hex << d << endl;
	cout << "zero is stored as (in hex) for char: " << hex << e << endl;
	cout << "zero is stored as (in hex) for bool: " << hex << f << endl;
	
	cout << "NULL is stored as (in hex) for int*: " << hex << g << endl;
	cout << "NULL is stored as (in hex) for char*: " << hex << h << endl;
	cout << "NULL is stored as (in hex) for double*: " << hex << i << endl;

	cout << "One is stored as (in hex) for int: " << hex << j  << endl;	
	cout << "One is stored as (in hex) for unsigned int: " << hex << k << endl;
	cout << "One is stored as (in hex) for float: " << hex << l << endl;
	cout << "One is stored as (in hex) for double: " << hex << m << endl;
	cout << "One is stored as (in hex) for char: " << hex << n << endl;
	cout << "One is stored as (in hex) for bool: " << hex << o << endl;
}

int main() {

	cout << "===== Representation in memory =====" << endl;

	bool b = true;
	char c = 'c';
	int i = 11;
	double d = 35.45;
	int* p = &i;

	cout << "bool b: " << b << endl;
	cout << "char c: " << c << endl;
	cout << "int i: " << i << endl;
	cout << "double d: " << d << endl;
	cout << "int* p: " << p << endl;

	cout << "===== Primitive Arrays in C++ =====" << endl;
	int IntArray[10];
	char charArray[10];

	int IntArray2D[6][5];
	char CharArray2D[6][5];
	
	cout << "&(IntArray2D[2][3]): " << &IntArray2D[2][3] << endl;
	cout << "pointer expression: " << *((int *)IntArray2D +(6 * 2) + 3) << endl;

	worksheet();
}

