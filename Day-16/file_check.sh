#!/bin/bash

read -p "Enter Filename: " FILE
if [ -f "$FILE" ]
then
	echo "File Exists"
else
	echo "File Not Found"
fi	
