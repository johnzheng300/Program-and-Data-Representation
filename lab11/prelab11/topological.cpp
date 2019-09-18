/*
John Zheng
jz5pt
4/22/19
topological.cpp
*/

#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <string>
#include <set>
#include <queue>
#include <map>

using namespace std;

/*! Graph class */
class Graph {
	public:
		map<string, set<string> > graph;
		set<string> vertices;

		/**
		* @brief add neighboring nodes to the source node
		* @return this is a void function, so it returns nothing
		* @param src The source node
		* @param dest The nodes that the source node can go to
		* @todo Need to write test cases for this function
		*/
		void addEdge(string src, string dest) {
			if (graph.find(src) == graph.end()) {
				set<string> newSet;
				newSet.insert(dest);
				graph.insert(pair<string, set<string> >(src, newSet));
				vertices.insert(src);
				vertices.insert(dest);
			} else {
				graph[src].insert(dest);
				vertices.insert(dest);
			}
		}

		/**
		* @brief this function sorts the graph of nodes in topological order
		* @return This function returns a vector of strings after topological sort
		* @todo Need to write test cases for this function
		*/
		vector<string> topSort() {
			//computes indegrees for all nodes
			map<string, int> indegrees;
			map<string, set<string> >::iterator it;
			for (it = graph.begin(); it != graph.end(); it++) {
				for (string s : it->second) {
					if (indegrees.find(s) == indegrees.end()) {
						indegrees[s] = 0;
					}
					indegrees[s]++;
				}
			}
			//make a queue that holds the nodes w/ 0 indegrees
			queue<string> q;
			for (string s : vertices) {
				if (indegrees.find(s) == indegrees.end()) {
					q.push(s);
				}
			}
			//iterate while the queue is not empty
			vector<string> ret;
			while(!q.empty()) {
				string s = q.front();
				q.pop();
				for (string e : graph[s]) {
					indegrees[e]--;
					if (indegrees[e] == 0) {
						q.push(e);
					}
				}
				ret.push_back(s);
			}
			return ret;
		}
};

/**
* @brief The main function, takes in one command line parameter
* @return main function, returns 0
* @param argc The number of arguments
* @param argv The values of the arguments
* @todo Nothing else needed for main function
*/
int main(int argc, char **argv) {
	// verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
	string s1, s2;
	Graph g;
	while(true) {
		file >> s1;
		file >> s2;
		if (s1 == "0") {
			break;
		}
		g.addEdge(s1, s2);
	}
	vector<string> out = g.topSort();
	for (string s : out) {
		cout << s << " ";
	}
	cout << endl;


    file.close();
	return 0;
}
