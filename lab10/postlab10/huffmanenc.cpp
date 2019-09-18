/*
John Zheng
jz5pt
4/15/19
huffmanenc.cpp
*/

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <map>
#include "heap.h"
#include "huffmanNode.h"
#include <string>
#include <vector>

using namespace std;

void  makePrefix(huffmanNode* root, string cur, map<char, string>* m) {
	if (root->left == NULL && root->right == NULL) {
		m->insert(pair<char, string>(root->key, cur));
	} else {
		if (root->right != NULL) {
			makePrefix(root->right, cur + '1', m);
		}
		if (root->left != NULL) {
			makePrefix(root->left, cur + '0', m);
		}
	}
}

int main(int argc, char **argv) {
	if (argc != 2) {
		cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
	}
	// attempt to open the supplied file.  FILE is a type desgined to
    // hold file pointers.  The first parameter to fopen() is the
    // filename.  The second parameter is the mode -- "r" means it
    // will read from the file.
    FILE *fp = fopen(argv[1], "r");
    // if the file wasn't found, output and error message and exit
    if ( fp == NULL ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        exit(2);
    }
	//step 1a: create a frequency table of characters
	char g;
	int count = 1;
	vector<char> chars;
	map<char, int> freq;
	while ((g = fgetc(fp)) != EOF) {
		chars.push_back(g);
		if (freq.find(g) == freq.end()) {
			freq.insert(pair<char, int>(g, count));
		} else {
			freq[g]++;
		}
	}
	/*
	//check frequency table
	char s;
	cout << "what do you want to look up?";
	cin >> s;
	cout << freq[s] << endl;
	*/

	//step 1b: build a min-heap, sorted by frequency
	binary_heap heap;
	map<char, int>::iterator it;
	for (it = freq.begin(); it != freq.end(); it++) {
		int ascii = (int) it->first;
		if (ascii >= 32 && ascii <= 128) {
			huffmanNode* node = new huffmanNode(it->first, it->second);
			heap.insert(node);
		}
	}

	//step 2: build huffman tree
	while (heap.size() > 1) {
		huffmanNode* min1 = heap.deleteMin();
		huffmanNode* min2 = heap.deleteMin();
		huffmanNode* newNode = new huffmanNode('?', min1->count + min2->count);
		newNode->left = min1;
		newNode->right = min2;
		heap.insert(newNode);
	}

	//step 3: prefix table
	huffmanNode* root = heap.deleteMin();
	map<char, string> prefix;
	makePrefix(root, "", &prefix);

	//print section 1
	map<char, string>::iterator it2;
	for (it2 = prefix.begin(); it2 != prefix.end(); it2++) {
		if (it2->first == ' ') {
			cout << "space" << " " << it2->second << endl;
		} else {
			cout << it2->first << " " << it2->second << endl;
		}
	}
	cout << "----------------------------------------" << endl;

	//print section 2
	int charCount, bitCount;
	string printable;
	for (char c : chars) {
		printable += prefix[c] + ' ';
		charCount++;
		bitCount += prefix[c].length();
	}
	cout << printable << endl;
	cout << "----------------------------------------" << endl;

	//print section 3
	int distinct = prefix.size();
	int originalBitCount = charCount * 8;
	double cmpRatio = (double) originalBitCount / (double) bitCount;
	double treeCost = 0;
	map<char, string>::iterator it3;
	for (it3 = prefix.begin(); it3 != prefix.end(); it3++) {
		treeCost += ((double) freq[it3->first] / charCount) * it3->second.length();
	}
	cout << "There are a total of " << charCount << " symbols that are encoded." << endl;
	cout << "There are " << distinct << " distinct symbols used." << endl;
	cout << "There were " << originalBitCount << " bits in the original file." << endl;
	cout << "There were " << bitCount << " bits in the compressed file." << endl;
	cout << "This gives a compression ratio of " << cmpRatio << '.' << endl;
	cout << "The cost of the Huffman tree is " << treeCost << " bits per character." << endl;
}


