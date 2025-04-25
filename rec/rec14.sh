#!/bin/bash
echo "Enter a number:"
read number
sum_even=0
sum_odd=0
count_odd=0
while [ $number -gt 0 ]; do
  digit=$((number % 10))
  
  if ((digit % 2 == 0)); then
    sum_even=$((sum_even + digit))
  else
    sum_odd=$((sum_odd + digit))
    count_odd=$((count_odd + 1))
  fi  
  number=$((number / 10))
done
echo "Sum of even digits: $sum_even"
if [ $count_odd -gt 0 ]; then
  avg_odd=$((sum_odd / count_odd))
  echo "Average of odd digits: $avg_odd"
else
  echo "No odd digits found."
fi

