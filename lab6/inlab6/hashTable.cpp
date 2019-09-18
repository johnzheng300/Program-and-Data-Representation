/*
Name:	John Zheng
ID:		jz5pt
File:	hashTable.cpp
Date:	3/3/19
*/

#include "hashTable.h"
#include <math.h>

using namespace std;

//default constructor
Hash::Hash() {
	tableSize = getNextPrime(1000);
	table.resize(tableSize);
}

//destructor
Hash::~Hash() {
	table.clear();
	tableSize = 0;
}

//hash function
unsigned int Hash::hash(string key) {
	unsigned int num = 0;
	for (int i = 0; i < key.length() ; i++) {
		num += key[i] * pow(37, i);
	}
	return num % tableSize;
}

//insert key through hash function
void Hash::insert(string key) {
	int index = hash(key);
	table[index].push_back(key);
}

//returns true if element is in table
bool Hash::contains(string key) {
	int index = hash(key);
	//use the int returned by the has function to access vector at index int
	for (string word : table[index]) {
		if (word == key) {
			return true;
		}	
	}
	return false;
}

//returns true if the int is prime
bool Hash::checkprime(unsigned int p) {
	if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

//returns the next prime number after the int
int Hash::getNextPrime (unsigned int n) {
	while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}

//returns the capacity of the table
int Hash::capacity() {
	return table.capacity();
}
