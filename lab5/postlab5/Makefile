#John Zheng 
#jz5pt
#2/28/19

CXXFLAGS=-Wall -O2
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g
OFILES=AVLNode.o AVLTree.o AVLPathTest.o


.SUFFIXES: .o .cpp

main: $(OFILES)
	  $(CXX) $(OFILES) 

clean:
	-rm -f *.o *~ a.out

AVLNode.o: AVLNode.h AVLNode.cpp
AVLTree.o: AVLTree.h AVLTree.cpp
AVLPathTest.o: AVLPathTest.cpp
