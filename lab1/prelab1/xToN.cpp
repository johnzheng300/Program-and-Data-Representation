//john zheng jz5pt 11/25/19 xToN.cpp
#include <iostream>
using namespace std;

int xToN(int x, int n) {
	if (n == 0) {
		return 1;
	} else {
		return x * xToN(x, n - 1);
	}
}

int main() {
	int x, n;
	cin >> x;
	cin >> n;
	int ans = xToN(x, n);
	cout << ans << endl;
	
	return 0;
}
