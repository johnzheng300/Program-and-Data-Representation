#include <iostream>
#include "hashTable.h"
using namespace std;

int main() {
	Hash h = Hash();
	h.insert("man");
	h.insert("dog");
	h.insert("wolf");
	h.insert("momma");
	cout << h.contains("momma") << endl;
	cout << h.contains("man") << endl;
	cout << h.contains("dog") << endl;
	cout << h.contains("wolf") << endl;
	cout << h.contains("cheese") << endl;
	h.insert("cheese");
	cout << h.contains("cheese") << endl;
	return 0;
}
