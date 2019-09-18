/*
John Zheng
jz5pt
4/15/19
huffmanNode.cpp
*/

#include "huffmanNode.h"

huffmanNode::huffmanNode() {
	key = '?';
	count = 0;
	left = NULL;
	right = NULL;
}

huffmanNode::huffmanNode(char character, int charFreq) {
	key = character;
	count = charFreq;
	left = NULL;
	right = NULL;
}
