#!/bin/bash

sum_of_odd_digits() {
    num=$1
    sum=0
    
    while [ $num -gt 0 ]; do
        digit=$((num % 10)) 
        num=$((num / 10))

        if [ $((digit % 2)) -ne 0 ]; then
            sum=$((sum + digit))
        fi
    done
    
    echo "Sum of odd digits: $sum"
}

echo "Enter a number:"
read number

sum_of_odd_digits $number

