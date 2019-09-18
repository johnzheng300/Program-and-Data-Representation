#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

using namespace std;

#include "middleearth.h"

float computeDistance (MiddleEarth &me, string start, vector<string> dests);
void printRoute (string start, vector<string> dests);

int main (int argc, char **argv) {
    // check the number of parameters
    if ( argc != 6 ) {
        cout << "Usage: " << argv[0] << " <world_height> <world_width> "
             << "<num_cities> <random_seed> <cities_to_visit>" << endl;
        exit(0);
    }
    // we'll assume the parameters are all well-formed
    int width, height, num_cities, rand_seed, cities_to_visit;
    sscanf (argv[1], "%d", &width);
    sscanf (argv[2], "%d", &height);
    sscanf (argv[3], "%d", &num_cities);
    sscanf (argv[4], "%d", &rand_seed);
    sscanf (argv[5], "%d", &cities_to_visit);
    // Create the world, and select your itinerary
    MiddleEarth me(width, height, num_cities, rand_seed);
    vector<string> dests = me.getItinerary(cities_to_visit);
    // YOUR CODE HERE
	/*
	test printRoute
	printRoute("dunharrow", dests);
	*/
	//me.printTable();
	sort(dests.begin()+1, dests.end());
	float shortestDist;
	shortestDist = computeDistance(me, dests[0], dests);
	vector<string> newDests = dests;
	//cout << "test1" << endl;
	while (next_permutation(dests.begin()+1, dests.end())) {
		float newDist = computeDistance(me, dests[0], dests);
		if (newDist < shortestDist) {
			shortestDist = newDist;
			newDests = dests;
		}
	}
	cout << "Minimum path has distance " << shortestDist << ": " << endl;
	printRoute(newDests[0], newDests);
    return 0;
}
/**
* @brief This method will compute the full distance of the cycle that starts
* at the 'start' parameter, goes to each of the cities in the dests
* vector IN ORDER, and ends back at the 'start' parameter.
* @param me The Middleearth object
* @param start The starting city
* @param dests The vector of cities to visit
* @return Returns a floating point value of the distance in the vector of cities
*/
float computeDistance (MiddleEarth &me, string start, vector<string> dests) {
    // YOUR CODE HERE
	float dist = 0;
	for (int i = 1; i < dests.size(); i++) {
		dist += me.getDistance(dests[i-1], dests[i]);
	}
	dist += me.getDistance(dests[dests.size()-1], dests[0]);
	return dist;
}
/**
* @brief This method will print the entire route, starting and ending at the 'start' parameter.  
* The output should be of the form:
* Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
* @param start The starting city
* @param dests The vector of cities to visit
* @return This is a void function, returns nothing
*/
void printRoute (string start, vector<string> dests) {
    // YOUR CODE HERE
	for (string s : dests) {
		cout << s << " -> ";
	}
	cout << start << endl;
}
