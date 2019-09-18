#include <iostream>
using namespace std;

class vegetable {
	public:
		virtual void printVegetable() {
			cout << "This is a vegetable" << endl;
		}
		virtual void vegetableLoop() {
			for (int i = 0; i < 3; i++) {
				cout << "I am a vegetable" << endl;
			}
		}
};

class spinach: public vegetable {
	public:
		void printVegetable() {
			cout << "This is a spinach" << endl;
		}
		void vegetableLoop() {
			for (int i = 0; i < 3; i++) {
				cout << "I am a spinach" << endl;
			}
		}
};

int main() {
	vegetable *veggy;
	spinach s;
	veggy = &s;
	veggy->printVegetable();
	veggy->vegetableLoop();


	return 0;
}
