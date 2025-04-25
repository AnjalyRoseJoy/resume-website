#!/bin/bash

check_equal() {
    if [ "$str1" == "$str2" ]; then
        echo "The strings are equal."
    else
        echo "The strings are not equal."
    fi
}

check_length() {
    if [ -z "$str1" ]; then
        echo "The first string is empty."
    else
        echo "The first string is not empty."
    fi

    if [ -z "$str2" ]; then
        echo "The second string is empty."
    else
        echo "The second string is not empty."
    fi
}

concatenate_strings() {
    result="$str1$str2"
    echo "The concatenated string is: $result"
}

while true; do
    echo "------------------------"
    echo "Menu:"
    echo "1. Check if two strings are equal"
    echo "2. Check if the length of strings is 0"
    echo "3. Concatenate two strings"
    echo "4. Exit"
    echo "------------------------"
    echo "Choose an option (1-4):"
    read choice

    case $choice in
        1)
            echo "Enter the first string: "
            read str1
            echo "Enter the second string: "
            read str2
            check_equal
            ;;
        2)
            echo "Enter the first string: "
            read str1
            echo "Enter the second string: "
            read str2
            check_length
            ;;
        3)
            echo "Enter the first string: "
            read str1
            echo "Enter the second string: "
            read str2
            concatenate_strings
            ;;
        4)
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option! Please choose a valid option (1-4)."
            ;;
    esac
done

