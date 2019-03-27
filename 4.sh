#!/bin/bash


if [[ ! (-a $1) ]]
	then
		echo "The file doesn't exist"
		exit
fi
if [[ $# -ne 2 ]]
	then
		echo "Invalid no.of arguments"
		exit
fi
count=$(grep -c -e $2 $1)
if [[ $count -eq 0 ]]
	then
		echo $2 >> $1
		echo "Username is added"
		exit
	else
		echo "Username already exists"
		exit
fi