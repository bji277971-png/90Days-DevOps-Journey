#!/bin/bash

read -p "Enter Number: " NUM

if [ "$NUM" -gt 0 ]
then
    echo "Positive"
elif [ "$NUM" -lt 0 ]
then
    echo "Negative"
else
    echo "Zero"
fi
