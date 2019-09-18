/*
Name: john zheng
ID:	  jz5pt
Date: 1/28/19
File: ListItr.cpp
*/

#include "ListItr.h"
using namespace std;

//constructor
ListItr::ListItr() {
	current = NULL;
}

//one parameter constructor
ListItr::ListItr(ListNode* theNode) {
	current = theNode;
}

//returns true if the iterator is currently pointing past the end position in the list
bool ListItr::isPastEnd() const {
	if(current->next == NULL) {
		return true;
	} else {
		return false;
	}
}

//returns true if the iterator is currently pointing before the first posiion
bool ListItr::isPastBeginning() const {
	if (current->previous == NULL) {
		return true;
	} else {
		return false;
	}
}

//advances the current pointer to the next position in th elist (unless already past the end of the list)
void ListItr::moveForward() {
	if (!isPastEnd()) {
		current = current->next;
	}
}

//advance the current pointer to the previous position in the list (unless already past the beginning of the list)
void ListItr::moveBackward() {
	if (!isPastBeginning()) {
		current = current->previous;	
	}
}

// returns the value of the item in the current position of the list
int ListItr::retrieve() const {
	return current->value;
}
