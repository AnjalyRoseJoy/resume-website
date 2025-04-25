#!/bin/bash
echo "enter two numbers:"
read a
read b
if [ $a -eq $b ]
then
	echo "the numbers are equal"

elif [ $a -gt $b ]
then
	echo $a

else
	echo $b
fi
