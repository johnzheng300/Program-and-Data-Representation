# John Zheng jz5pt 3/4/19

CXXFLAGS=-Wall -O2
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g
OFILES=wordPuzzle.o hashTable.o timer.o 

.SUFFIXES: .o .cpp

main: $(OFILES)
	$(CXX) $(OFILES)

CLEAN:
	-rm -f *.o *~main

hashTable.o:	hashTable.h hashTable.cpp
timer.o:	timer.h timer.cpp
wordPuzzle.o:	wordPuzzle.cpp
