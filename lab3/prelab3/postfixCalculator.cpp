/*
Name:	John Zheng
ID:		jz5pt
Date:	2/4/19
File:	postfixCalculator.cpp	
*/

#include "postfixCalculator.h"
#include <cstdlib>
using namespace std;

//creates a stack for calculation
postfixCalculator::postfixCalculator() {
	
}

//push the value to the top of the stack
void postfixCalculator::push(int value) {
	stack.push(value);
}

//returns the element of the top of the stack, doesn't remove
int postfixCalculator::top() {
	if (!stack.empty()) {
		return stack.top();
	} else {
		exit(-1);
	}
}

//removes the next value in the stack
void postfixCalculator::pop() {
	if (!stack.empty()) {
		stack.pop();
	} else {
		exit(-1);
	}
}

//returns whether the stack is empty
bool postfixCalculator::empty() {
	return stack.empty();	
}

//adds the operands
void postfixCalculator::add() {
	int right = stack.top();
	stack.pop();
	int left = stack.top();
	stack.pop();
	int result = left + right;		
	stack.push(result);
} 

//subtract the two top values of the stack
void postfixCalculator::subtract() {
	int right = stack.top();
	stack.pop();
	int left = stack.top();
	stack.pop();
	int result = left - right; 
	stack.push(result);
}

//multiplies the two top values of the stack
void postfixCalculator::multiply() {
	int right = stack.top();
	stack.pop();
	int left = stack.top();
	stack.pop();
	int result = left * right;
	stack.push(result);
}

//divides the two top values of the stack
void postfixCalculator::divide() {
	int right = stack.top();
	stack.pop();
	int left = stack.top();
	stack.pop();
	int result = left / right;
	stack.push(result);
}

//negates the next value in the stack
void postfixCalculator::negate() {
	int result = stack.top() * -1;	
	stack.pop();
	stack.push(result);
}





