/*
Name:			John Zheng
Date: 			2/7/19
ID:				jz5pt	
File:			stack.cppj
*/

#include "stack.h"
using namespace std;

//constructor
Stack::Stack() {
	List list;	
}

//push the passed value to the top of the stack
void Stack::push(int x) {
	list.insertAtTail(x);
}

//removes the top of the stack
void Stack::pop() {
	ListItr i = list.last();
	if (!i.isPastEnd()) {
		i.current->previous->next = i.current->next;
		i.current->next->previous = i.current->previous;
		delete i.current;
		list.count--;
	}
}

//returns the top of the stack
int Stack::top() {
	ListItr i = list.last();
	if (!i.isPastEnd()) {
		return i.retrieve();	
	} 
	return -1;
}

//returns true if the stack is empty
bool Stack::empty() {
	return size() == 0;
}

//returns the size of the stack
int Stack::size() const {
	return list.count;	
}
