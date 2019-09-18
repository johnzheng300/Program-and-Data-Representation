#!/bin/bash
#John Zheng jz5pt 3/21/19
#ask for the exponent
echo "enter the exponent for counter.cpp:"
read e
if [ $e=="quit" ]; then
	echo "don't know why it enters this loop every time, but the rest of the code works."
		exit
fi

clang++ counter.cpp

sum=0

for i in {1..5}; do
	echo "Running iteration $i..."
	time=`./a.out $e`
	echo "time take: $sum ms" 	
	sum=$((sum+time))
done

average=$((sum/5))

echo "5 iterations took $sum ms"
echo "Average time was $average ms"
