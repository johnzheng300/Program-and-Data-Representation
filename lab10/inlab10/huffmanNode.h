/*
John Zheng
jz5pt
4/15/19
huffmanNode.h
*/
#ifndef HUFFMANNODE_H
#define HUFFMANNODE_H
#include <stddef.h>
using namespace std;

class huffmanNode {
	public:
		huffmanNode();
		huffmanNode(char character, int charFreq);
		huffmanNode *left, *right;
		int count;
		char key;
};

#endif
