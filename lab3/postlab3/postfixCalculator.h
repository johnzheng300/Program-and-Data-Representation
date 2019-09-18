/*
Name:	John Zheng
ID:		jz5pt
Date:	2/4/19
File:	postfixCalculator.h
*/

#include "stack.h"
#include <iostream>
using namespace std;

class postfixCalculator {
	public:
		postfixCalculator();		 //constructor
		void push(int value);						//push an int to the top of the stack
		void pop();						//removes the next value in the stack
		int top();						//returns the next value, doesn't remove
		bool empty();					//whether the stack is empty
		void add(); 						//adds the next two values 
		void subtract();					//subtracts the next two values
		void multiply();					//multiplies the next two values 
		void divide();					//divides the next two values
		void negate();					//negate the next value in the stack
	private:
		Stack stack;			//the stack of ints
};
