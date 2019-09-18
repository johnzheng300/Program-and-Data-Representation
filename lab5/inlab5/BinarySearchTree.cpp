/*
Name:	John Zheng
ID:		jz5pt
Date:	2/26/19
File:	BinarySearchTree.cpp
*/

#include "BinarySearchTree.h"
#include <string>
#include "BinaryNode.h"
#include <iostream>
using namespace std;

BinarySearchTree::BinarySearchTree() {
	root = NULL;
	size = 1;
}

BinarySearchTree::~BinarySearchTree() {
  delete root;
  root = NULL;
  size = 1;
}

// insert finds a position for x in the tree and places it there.
void BinarySearchTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  BinaryNode* newNode = new BinaryNode();
  newNode->value = x;
  BinaryNode* cur = root;
  if (size == 1) {
	root = newNode;
  } else {
	while (cur != NULL) {
	  if (cur->value < x) {
	    if (cur->left == NULL) {
		  cur->left = newNode;
		  break;
		}
		cur = cur->left;		 
	  } else {
		if (cur->right == NULL) {
		  cur->right = newNode;
		  break;
		}
	    cur = cur->right;
      }
    }
  }
  size += 1;
}

// remove finds x's position in the tree and removes it.
void BinarySearchTree::remove(const string& x) { 
	root = remove(root, x); 
	size -= 1;
}

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string BinarySearchTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  if (find(x)) {
	string s;
	BinaryNode* cur = root;
	while (cur->value != x) {
		if (cur->value < x) {
			s += cur->value + " ";
			cur = cur->left;
		} else {
			s += cur->value + " ";
			cur = cur->right;
		}
	}
	return s += x;
  }
  return "-1";
}

// find determines whether or not x exists in the tree.
bool BinarySearchTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  BinaryNode* cur = root;
  while (cur != NULL) {
	if (cur->value == x) {
		return true;
	}
	else if (cur->value < x) {
		cur = cur->left;
	} else {
		cur = cur->right;
	}
  }
  return false;
}

// numNodes returns the total number of nodes in the tree.
int BinarySearchTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  return size;
}

// private helper for remove to allow recursion over different nodes. returns
// a BinaryNode* that is assigned to the original node.
BinaryNode* BinarySearchTree::remove(BinaryNode*& n, const string& x) {
  if (n == NULL) {
    return NULL;
  }
  // first look for x
  if (x == n->value) {
    // found
    // no children
    if (n->left == NULL && n->right == NULL) {
      delete n;
      n = NULL;
      return NULL;
    }
    // single child
    if (n->left == NULL) {
      BinaryNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      BinaryNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  return n;
}

// min finds the string with the smallest value in a subtree.
string BinarySearchTree::min(BinaryNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == NULL) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void BinarySearchTree::printTree(BinaryNode* root, Trunk* prev, bool isLeft) {
  if (root == NULL) return;

  string prev_str = "    ";
  Trunk* trunk = new Trunk(prev, prev_str);

  printTree(root->left, trunk, true);

  if (!prev)
    trunk->str = "---";
  else if (isLeft) {
    trunk->str = ".---";
    prev_str = "   |";
  } else {
    trunk->str = "`---";
    prev->str = prev_str;
  }

  showTrunks(trunk);
  cout << root->value << endl;

  if (prev) prev->str = prev_str;
  trunk->str = "   |";

  printTree(root->right, trunk, false);
}

void BinarySearchTree::printTree() {
	 printTree(root, NULL, false);
}
