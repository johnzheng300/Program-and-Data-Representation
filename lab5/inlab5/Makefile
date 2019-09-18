#John Zheng 
#jz5pt
#2/23/19

CXXFLAGS=-Wall -O2
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g
OFILES=BinaryNode.o BinarySearchTree.o BSTPathTest.o


.SUFFIXES: .o .cpp

main: $(OFILES)
	  $(CXX) $(OFILES) -o main

clean:
	-rm -f *.o *~ main

BinaryNode.o: BinaryNode.h BinaryNode.cpp
BinarySearchTree.o: BinarySearchTree.h BinarySearchTree.cpp
BSTPathTest.o: BSTPathTest.cpp
