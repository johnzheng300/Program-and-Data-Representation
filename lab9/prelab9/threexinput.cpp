/*
John Zheng
jz5pt
4/10/19
threexinput.cpp
*/

#include <iostream>
#include "timer.h"

using namespace std;

extern "C" int threexplusone(int);

int main() {
	int x, n, steps;
	double average;
	timer t;
	cout << "Please enter a number:		";
	cin >> x;
	cout << "How many times do you want to run the subroutine:		";
	cin >> n;
	t.start();
	for (int i = 0; i < n; i++) {
		steps = threexplusone(x);
	}
	t.stop();
	average = t.getTime() * 1000 / (double) n;
	cout << "The program took " << steps << " steps and the average time was " << average << " seconds" << endl;	

	return 0;
}
