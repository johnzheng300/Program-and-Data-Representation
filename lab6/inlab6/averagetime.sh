#!/bin/bash
#ask the user for the dictionary file name
echo "please enter the dictionary file"
read dict
#ask the user for the grid file name
echo "please enter the grid file"
read grid
temp=0
average=0
numFiles=5
for i in {1..5} ; do
	temp=`./a.out $dict $grid | tail -1`
	average=$(echo $average + $temp | bc)
	done
echo $average
