#!/bin/bash

copy_file() {
    echo "Enter the source file name to copy: "
    read source_file
    echo "Enter the destination file name: "
    read dest_file

    if [ -f "$source_file" ]; then
        cp "$source_file" "$dest_file"
        echo "File copied successfully."
    else
        echo "Source file does not exist."
    fi
}

remove_file() {
    echo "Enter the file name to remove: "
    read file_to_remove

    if [ -f "$file_to_remove" ]; then
        rm "$file_to_remove"
        echo "File removed successfully."
    else
        echo "File does not exist."
    fi
}

while true; do
    echo "------------------------"
    echo "Menu:"
    echo "1. Copy a file"
    echo "2. Remove a file"
    echo "3. Exit"
    echo "------------------------"
    echo "Please choose an option (1-3): "
    read choice

    case $choice in
        1)
            copy_file
            ;;
        2)
            remove_file
            ;;
        3)
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option! Please choose a valid option (1-3)."
            ;;
    esac
done

