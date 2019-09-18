/*
 *Name: john zheng
 *Computing ID: jz5pt
 *Date: 1/27/19
 *Filename: List.cpp
 */

#include "List.h"
#include "ListNode.h"
using namespace std;

//default constructor
List::List() {
	head = new ListNode();
	tail = new ListNode();
	head->next = tail;
	tail->previous = head;
	count = 0;
}

//destructor. It should make list empty and reclaim the memory allocated in the constructor for head and tail
List::~List() { 
	makeEmpty();	
	delete head;
	delete tail;
}

//copy assignment operator. It is called when code such as the following is encountered: lhs = rhs. The copy assignment operator that you implement will copy the contents of every ListNode in source into this (the reference to the calling List object itself)
List::List(const List& source) {
	head=new ListNode;
    tail=new ListNode;
    head->next=tail;
    tail->previous=head;
    count=0;
    ListItr iter(source.head->next);
    while (!iter.isPastEnd()) {       // deep copy of the list
        insertAtTail(iter.retrieve());
        iter.moveForward();
    }
}

//equals operator
List& List::operator=(const List& source) { //Equals operator
    if (this == &source)
        return *this;
    else {
        makeEmpty();
        ListItr iter(source.head->next);
        while (!iter.isPastEnd()) {
            insertAtTail(iter.retrieve());
            iter.moveForward();
        }
    }
    return *this;
}

bool List::isEmpty() const {
	if (this->size()  == 0) {
		return true;
	} else {
		return false;
	}
}

void List::makeEmpty() {
	ListItr l = ListItr(this->head->next);
	while (!l.isPastEnd()) {
		l.moveForward();
		delete l.current->previous;
	}
	head->next = tail;
	tail->previous = head;
	count = 0;	
} 

ListItr List::first() {
	return ListItr(head->next);	
}

ListItr List::last() {
	return ListItr(tail->previous);
}

//inserts x after the current iterator position position
void List::insertAfter(int x, ListItr position) {
	ListNode *node = new ListNode();	
	node->value = x;
	node->previous = position.current;
	node->next = position.current->next; 
	position.current->next = node;
	position.current->next->previous = node;
	count++;
}

//inserts x before the current iterator position 
void List::insertBefore(int x, ListItr position) {
	ListNode *node = new ListNode();
	node->value = x;
	node->next = position.current;
	node->previous = position.current->previous;
	position.current->previous->next = node;
	position.current->previous = node;
	count++;
}

//inserts x at tail of list
void List::insertAtTail(int x) {
	ListNode *node = new ListNode();
	node->value = x;
	node->next = tail;
	node->previous = tail->previous;
	tail->previous->next = node;
	tail->previous = node;
	count++;
}

//removes the first ocurence of x
void List::remove(int x) {
	ListItr l = find(x);
	if (!l.isPastEnd()) {
		l.current->previous->next = l.current->next;	//link current's previous's next to current's next
		l.current->next->previous = l.current->previous;	//link current's next's previous to current's previous
		delete l.current;
		count--;
	}
}

/*returns an iterator that points to the first occurrence of x. When the parameter is not in the list, return a ListItr object, where the current pointer points to the dummy tail node. This makes sense because you can test the return from find() to see if isPastEnd() is true
*/
ListItr List::find(int x) {
	ListItr l = first();
	while (!l.isPastEnd()) {
		if (l.retrieve() == x) {
			break;
		}
		l.moveForward();
	}
	return l;
}

//returns the number of elements in the list
int List::size() const {
	return count;
}

//prints a list either forwards (by default -- from head to tail) when forward is true, or backwards (from tail to head) when forward is false.
void printList(List& theList, bool forward) {
	if (forward) {
	ListItr l = ListItr(theList.first());	
		while (!l.isPastEnd()) {
			cout << l.retrieve() << endl;
			l.moveForward();
		}
	} else {
	ListItr l = ListItr(theList.last());	
		while(!l.isPastBeginning()) {
			cout << l.retrieve() << endl;
			l.moveBackward();
		}
	}
}
