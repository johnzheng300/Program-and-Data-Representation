/*
Name:			John Zheng
Date: 			2/7/19
ID:				jz5pt	
File:			stack.h
*/

#ifndef STACK_H
#define STACK_H

#include <iostream>
#include "List.h"

using namespace std;

class Stack {
	public:
		Stack();
		void push(int x);
		void pop();
		int top();
		bool empty();
		int size() const;
	private:
		List list;
};

#endif
