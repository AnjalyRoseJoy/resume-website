#!/bin/bash
echo "Enter the file name:"
read filename

if [ -e "$filename" ]; then
    echo "File exists."
    
    if [ -f "$filename" ]; then
        echo "It is an ordinary file."
    else
    	echo "It is not an ordinary file."
    	
    fi
    if [ -d "$filename" ]; then
        echo "It is a directory."
    else
        echo "It is  not a directory."
    fi

    if [ -r "$filename" ]; then
        echo "File is readable."
    else
        echo "File is not readable."
    fi

    if [ -w "$filename" ]; then
        echo "File is writable."
    else
        echo "File is not writable."
    fi

    if [ -x "$filename" ]; then
        echo "File is executable."
    else
        echo "File is not executable."
    fi

    if [ -s "$filename" ]; then
        echo "File is not empty."
    else
        echo "File is empty."
    fi

else
    echo "File does not exist."
fi

