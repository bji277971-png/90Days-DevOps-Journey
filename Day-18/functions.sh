#!/bin/bash

greet() {
	echo "Hello, $1!" 
}

add() {
	sum=$(($1+$2))
	echo "sum = $sum" 
}

greet "Bala ji"

add 20 30
