/*
Name:	John Zheng
ID:		jz5pt
Date:	2/14/19
File:	bitCounter.cpp
*/

#include <iostream>
#include <cstdlib>
using namespace std;

//counts the number of 1 bits
int bitCounter(int n) {
	if (n == 0)				//base case
		return 0;
	else
		if (n % 2 == 1)		//if the number if odd, then there is a 1 bit at 2^0
			return 1 + bitCounter(n >> 1);		//returns 1 + recursive call of the next bit
		else 
			return bitCounter(n >> 1);			//returns the recursive call of the next bit
			
}

int main(int argc, char *argv[]) {
	if (argv[1])
		cout << bitCounter(atoi(argv[1])) << endl;
	else
		cout << "You did not enter a valid input" << endl;
	return 0;
}
