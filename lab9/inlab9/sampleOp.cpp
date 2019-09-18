using namespace std;

#include <string>
#include <iostream>

void helloWorld(){ 
	cout << "Hello World!" << endl;
}

bool positive(int x) {
	return x > 0;
}

int multiply(int x, int y) {
	int sum = 0;
	for (int i = 0; i < y; i++) {
		sum += x;	
	}
	return sum;
}

int main() {
	helloWorld();
	positive(7);
	multiply(2, 3);

	return 0;
}
