#!/bin/bash

read -p "Enter Number: " NUM

while [ $NUM -le 0 ]
do
	echo $NUM 
	NUM=$((NUM+1))
done

echo "Done"
