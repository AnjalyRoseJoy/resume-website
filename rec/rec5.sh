#!/bin/bash
read -p "enter the file name: " name
echo "Enter 5 values"
for i in {1..5}; do
	read value
	echo "$value" >> "$name"
done
echo "unsorted file:"
cat "$name" 
echo "sorted file"
sort "$name"

