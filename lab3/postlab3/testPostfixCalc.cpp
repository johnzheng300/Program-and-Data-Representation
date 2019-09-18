/*
Name:	John Zheng
ID:		jz5pt
Date:	2/4/19
File:	testPostfixCalc.cpp	
*/

#include <cstdlib>
#include <iostream>
#include "postfixCalculator.h"
#include <string>
using namespace std;
 
int main() {
	string s;
	postfixCalculator p;
	while (cin >> s) {
		if (s[0] == '+') {
			p.add();		
		}
		else if (s[0] == '-') {
			if (!isdigit(s[1])) {
				p.subtract();
			} else {
				p.push(atoi(s.c_str()));
			}
		}
		else if (s[0] == '*') {
			p.multiply();
		}
		else if (s[0] == '/') {
			p.divide();
		}
		else if (s[0] == '~') {
			p.negate();
		} 
		else {
			p.push(atoi(s.c_str()));		
		}
	}
	cout << "Result is: " << p.top() <<endl;
    return 0;
}
