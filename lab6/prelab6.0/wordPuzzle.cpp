/*
Name:	John Zheng
ID:		jz5pt
File:	hashTable.cpp
Date:	3/3/19
*/

#include <iostream>
#include "hashTable.h"
#include "timer.h"
#include <fstream>
#include <fstream>
#include <stdlib.h>

using namespace std;

#define MAXROWS 500
#define MAXCOLS 500
char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols);

int main(int argc, char *argv[]) {
	Hash h = Hash();
	ifstream infile(argv[1]);
	string word;
	while (getline(infile, word)) {
		h.insert(word);
	}
	int rows, cols;
	bool result = readInGrid(argv[2], rows, cols);
	if (!result) {
		cout << "Error reading in files!" << endl;
		exit(1);
	}
	vector<char*> wordsInGrid;
	int wordsFound = 0;
	timer t;
	t.start();
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			for (int dir = 0; dir < 8; dir++) {
				for (int len = 3; len < 23; len++) {
					if (h.contains(getWordInGrid(i, j, dir, len, rows, cols)) &&
						strlen(getWordInGrid(i, j, dir, len, rows, cols)) > 2) {
						switch (dir) {
							case 0:
								cout << "N (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 1:
								cout << "NE (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 2:
								cout << "E (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 3:
								cout << "SE (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 4:
								cout << "S (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 5:
								cout << "SW (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
							case 6:
								cout << "W (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;	
								wordsFound += 1;	
								break;
							case 7:
								cout << "NW (" << i << ", " << j << "):       " << getWordInGrid(i, j, dir, len, rows, cols) << endl;
								wordsFound += 1;	
								break;
						}
					}
				}
			}
		}
	}
	t.stop();
    cout << wordsFound << " words found" << endl;
    cout << "Found all words in " << t.getTime() << " seconds"<< endl;
	
	
		
	return 0;
}

bool readInGrid (string filename, int &rows, int &cols) {
    // a C++ string to hold the line of data that is read in
    string line;
    // set up the file stream to read in the file (takes in a C-style
    // char* string, not a C++ string object)
    ifstream file(filename.c_str());
    // upon an error, return false
    if ( !file.is_open() )
        return false;
    // the first line is the number of rows: read it in
    file >> rows;
    cout << "There are " << rows << " rows." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the second line is the number of cols: read it in and parse it
    file >> cols;
    cout << "There are " << cols << " cols." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the third and last line is the data: read it in
    getline (file,line);
    // close the file
    file.close();
    // convert the string read in to the 2-D grid format into the
    // grid[][] array.  In the process, we'll print the grid to the
    // screen as well.
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            grid[r][c] = line[pos++];
            cout << grid[r][c];
        }
        cout << endl;
    }
    // return success!
    return true;
}

char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols) {
    // the static-ness of this variable prevents it from being
    // re-declared upon each function invocataion.  It also prevents it
    // from being deallocated between invocations.  It's probably not
    // good programming practice, but it's an efficient means to return
    // a value.
    static char output[256];
    // make sure the length is not greater than the array size.
    if ( len >= 255 )
        len = 255;
    // the position in the output array, the current row, and the
    // current column
    int pos = 0, r = startRow, c = startCol;
    // iterate once for each character in the output
    for ( int i = 0; i < len; i++ ) {
        // if the current row or column is out of bounds, then break
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        // set the next character in the output array to the next letter
        // in the grid
        output[pos++] = grid[r][c];
        // move in the direction specified by the parameter
        switch (dir) { // assumes grid[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
}
