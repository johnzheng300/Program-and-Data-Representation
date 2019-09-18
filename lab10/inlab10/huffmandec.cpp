/*
John Zheng
jz5pt
4/16/19
huffmandec.cpp
*/
// This program is the skeleton code for the lab 10 in-lab.  It uses
// C++ streams for the file input, and just prints out the data when
// read in from the file.

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <map>
#include "huffmanNode.h"
using namespace std;

// main(): we want to use parameters
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file; must be opened in binary
    // mode, as otherwise whitespace is discarded
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
	map<string, string> m;
    // read in the first section of the file: the prefix codes
    while ( true ) {
        string character, prefix;
        // read in the first token on the line
        file >> character;
        // did we hit the separator?
        if ( (character[0] == '-') && (character.length() > 1) )
            break;
        // check for space
        if ( character == "space" )
            character = " ";
        // read in the prefix code
        file >> prefix;
        // do something with the prefix code
		m.insert(pair<string, string>(character, prefix));
        //cout << "character '" << character << "' has prefix code '"
             //<< prefix << "'" << endl;
    }
    // read in the second section of the file: the encoded message
    stringstream sstm;
    while ( true ) {
        string bits;
        // read in the next set of 1's and 0's
        file >> bits;
        // check for the separator
        if ( bits[0] == '-' )
            break;
        // add it to the stringstream
        sstm << bits;
    }
    string allbits = sstm.str();
    // at this point, all the bits are in the 'allbits' string
    //cout << "All the bits: " << allbits << endl;
    // close the file before exiting
    file.close();

	//builds huffman tree
	huffmanNode* root = new huffmanNode();
	map<string, string>::iterator it;
	huffmanNode* cur;
	for (it = m.begin(); it != m.end(); it++) {
		cur = root;
		for (int i = 0; i < it->second.length() -1; i++) {
			if (it->second[i] == '0') {
				if (cur->left == NULL) {
					cur->left = new huffmanNode();
				}
				cur = cur->left;
			} else {
				if (cur->right == NULL) {
					cur->right = new huffmanNode();
				}
				cur = cur->right;
			}
		}
		huffmanNode* newNode = new huffmanNode(it->first[0], 0);
		if (it->second[it->second.length()-1] == '0') {
			cur->left = newNode;
		} else {
			cur->right = newNode;
		}
	}
	
	string decode = "";
	cur = root;
	for (char c : allbits) {
		if (c == '0') {
			cur = cur->left;
		} else {
			cur = cur->right;
		}
		if (cur->left == NULL && cur->right == NULL) {
			decode += cur->key;
			cur = root;
		}
	}
	cout << decode << endl;
	
	return 0;
}




