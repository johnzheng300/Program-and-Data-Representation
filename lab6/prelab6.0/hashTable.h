/*
Name:	John Zheng
ID:		jz5pt
File:	hashTable.h
Date:	3/3/19
*/

#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <string>
#include <vector>
#include <list>

using namespace std;

class Hash {
	public:
		Hash();
		~Hash();
		unsigned int hash(string key);
		void insert(string key);
		bool contains(string key);
		bool checkprime(unsigned int p);
		int getNextPrime (unsigned int n);
		int capacity();
	private:
		vector<list<string> > table;		
		int tableSize;
};

#endif
