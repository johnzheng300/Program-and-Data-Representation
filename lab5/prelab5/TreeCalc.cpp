/*
Name:	John Zheng
ID:		jz5pt
Date:	2/24/19
File:	TreeCalc.cpp
*/
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <string>

using namespace std;

//Constructor
TreeCalc::TreeCalc() {
}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
	cleanTree(root);
}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
	//deletes the tree in postfix
	if (ptr != NULL) {
		cleanTree(ptr->left);
		cleanTree(ptr->right);
		delete ptr;			
	}
}

//Gets data from user
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
    // insert a value into the tree
	if (val == "+" || val == "-" || val == "*" || val == "/") {
		TreeNode* node = new TreeNode(val);
		node->right = mystack.top();
		mystack.pop();
		node->left = mystack.top();
		mystack.pop();
		mystack.push(node);
	}else {
		TreeNode* node = new TreeNode(val);
		mystack.push(node);
	}
}

//Prints data in prefix form
void TreeCalc::printPrefix(TreeNode* ptr) const {
    // print the tree in prefix format
	if (ptr != NULL) {
		cout << ptr->value << " ";
		printPrefix(ptr->left);
		printPrefix(ptr->right);
	}
}

//Prints data in infix form
void TreeCalc::printInfix(TreeNode* ptr) const {
    // print tree in infix format with appropriate parentheses
	if (ptr != NULL) {
		if (ptr->value == "+" || 
			ptr->value == "-" || ptr->value == "*" || 
			ptr->value == "/") {
			cout << "(" << " ";	
		}
		printInfix(ptr->left);
		cout << (ptr->value) << " ";
		printInfix(ptr->right);
		if (ptr->value == "+" ||
			ptr->value == "-" || 
			ptr->value == "*" || 
			ptr->value == "/") {
			cout << ")" << " ";
		}
	}
}

//Prints data in postfix form
void TreeCalc::printPostfix(TreeNode* ptr) const {
    // print the tree in postfix form
	if (ptr != NULL) {
		printPostfix(ptr->left);
		printPostfix(ptr->right);
		cout << (ptr->value) << " ";
	}
}

// Prints tree in all 3 (pre,in,post) forms
void TreeCalc::printOutput() const {
    if (mystack.size() != 0 && mystack.top() != NULL) {
        cout << "Expression tree in postfix expression: ";
		printPostfix(mystack.top());
        cout << endl;
        cout << "Expression tree in infix expression: ";
		printInfix(mystack.top());
        cout << endl;
        cout << "Expression tree in prefix expression: ";
		printPrefix(mystack.top());
        cout << endl;
    } else
        cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
    // Traverse the tree and calculates the result
	//empty tree
	if (!ptr) {
		return 0;
	}
	
	// leaf node i.e, an integer
	if (!ptr->left && !ptr->right) {
		return stoi(ptr->value);
	}

	//evaluate left subtree
	int l_val = calculate(ptr->left);

	//evaluate right subtree
	int r_val = calculate(ptr->right);

	//checking operators
	if (ptr->value == "+") {
		return l_val + r_val;
	}
	if (ptr->value == "-") {
		return l_val - r_val;
	}   	
	if (ptr->value == "*") {
		return l_val * r_val;
	}
	if (ptr->value == "/") {
		return l_val / r_val;
	}
	return -1;
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    int i = 0;
    // call private calculate method here
	i = calculate(mystack.top());
	cleanTree(mystack.top());
    return i;
}
