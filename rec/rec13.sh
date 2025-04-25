#!/bin/bash
echo "Please enter the filename:"
read filename
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi
echo "Sorted content of the file:"
sort "$filename"
word_count=$(wc -w < "$filename")
echo "Word count: $word_count"
