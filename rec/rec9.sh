#!/bin/bash
while true
do
    echo "Menu:"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            echo "Enter two numbers:"
            read num1 
            read num2
            result=$((num1 + num2))
            echo "Result: $result"
            ;;
        2)
            echo "Enter two numbers:"
            read num1 
            read num2
            result=$((num1 - num2))
            echo "Result: $result"
            ;;
        3)
            echo "Enter two numbers:"
            read num1 
            read num2
            result=$((num1 * num2))
            echo "Result: $result"
            ;;
        4)
            echo "Enter two numbers:"
            read num1 
            read num2
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$((num1 / num2))
                echo "Result: $result"
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done

