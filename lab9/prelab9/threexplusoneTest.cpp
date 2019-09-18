#include <iostream>
using namespace std;

int threexplusone(int num) {
    //check if end of recursion
    if (num / 2 == 1) {
        return 1;
    }
    //check if even
    if (num % 2 == 0) {
        return 1 + threexplusone(num / 2);
    }
    else {
        return 1+ threexplusone(3*num + 1);
    }
}
int main() {
	cout << threexplusone(14) << endl;	
}	
