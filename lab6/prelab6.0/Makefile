#John Zheng jz5pt 3/4/19

main: wordPuzzle.o hashTable.o timer.o
	clang++ wordPuzzle.o hashTable.o timer.o

wordPuzzle.o:	wordPuzzle.cpp
	clang++ -c wordPuzzle.cpp

hashTable.o:	hashTable.cpp hashTable.h
	clang++ -c hashTable.cpp

timer.o:	timer.cpp timer.h
	clang++ -c timer.cpp

clean:
	rm *.o ~main
