/*
Name:		John Zheng
ID:			jz5pt
Date:		2/28/19
File:		AVLTree.cpp
*/

#include "AVLTree.h"
#include <string>
#include "AVLNode.h"
#include <iostream>
#include <cstdlib>
using namespace std;

AVLTree::AVLTree() { root = NULL; size = 1;}

AVLTree::~AVLTree() {
  delete root;
  root = NULL;
  size = 1;
}

// insert finds a position for x in the tree and places it there, rebalancing
// as necessary.
void AVLTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* newNode = new AVLNode();
  newNode->value = x;
  AVLNode* cur = root;
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
  balance(findUnbalance(root));
}

// remove finds x's position in the tree and removes it, rebalancing as
// necessary.
void AVLTree::remove(const string& x) { root = remove(root, x); size -= 1;}

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string AVLTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
	if (find(x)) {
		string s;
		AVLNode* cur = root;
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
bool AVLTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
	AVLNode* cur = root;
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
int AVLTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  return size;
}

// balance makes sure that the subtree with root n maintains the AVL tree
// property, namely that the balance factor of n is either -1, 0, or 1.
void AVLTree::balance(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  int balance = height(n->right) - height(n->left);
  if (balance == 2) {
	if (height(n->right->right) - height(n->right->left) < 0) {
		rotateRight(n->right);
	}
	rotateLeft(n);
  } else if (balance == -2) {
		if (height(n->left->right) - height(n->left->left) > 0) {
			rotateLeft(n->left);
		}
		rotateRight(n);
  }
}

//finds the unbalance root
AVLNode*& AVLTree::findUnbalance(AVLNode*& root) {
	AVLNode* cur = root;
	while (cur != NULL) {
		if (abs(height(cur->right) - height(cur->left)) > 1) {
			return cur;
		}
		if (height(cur->right) > height(cur->left)) {
			cur = cur->right;
		} else {
			cur = cur->left;	
		}
	}
	return root;
}

// rotateLeft performs a single rotation on node n with its right child.
AVLNode* AVLTree::rotateLeft(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* newRoot = n->right;
  newRoot->right = newRoot->left;
  newRoot->left = newRoot;
  return newRoot;
}

// rotateRight performs a single rotation on node n with its left child.
AVLNode* AVLTree::rotateRight(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* newRoot = n->left;
  newRoot->left = newRoot->right;
  newRoot->right = newRoot;
  return newRoot;
}

// private helper for remove to allow recursion over different nodes. returns
// an AVLNode* that is assigned to the original node.
AVLNode* AVLTree::remove(AVLNode*& n, const string& x) {
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
      AVLNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      AVLNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children -- tree may become unbalanced after deleting n
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  n->height = 1 + max(height(n->left), height(n->right));
  balance(n);
  return n;
}

// min finds the string with the smallest value in a subtree.
string AVLTree::min(AVLNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// height returns the value of the height field in a node. If the node is
// null, it returns -1.
int AVLTree::height(AVLNode* node) const {
  if (node == NULL) {
    return 0;
  } else {
	int lHeight = height(node->left);
	int rHeight = height(node->right);
	return max(lHeight, rHeight);
  }
}

// max returns the greater of two integers.
int max(int a, int b) {
  if (a > b) {
    return a;
  }
  return b;
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == NULL) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void AVLTree::printTree(AVLNode* root, Trunk* prev, bool isLeft) {
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

void AVLTree::printTree() { printTree(root, NULL, false); }
