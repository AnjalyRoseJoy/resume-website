#!/bin/bash

echo "Enter the start of the range:"
read start
echo "Enter the end of the range:"
read end
echo "prime numbers: "
for (( num=$start; num<=$end; num++ ))
do
  is_prime=1
  for (( i=2; i<=num/2; i++ ))
  do
    if (( num%i == 0 ))
    then
      is_prime=0
      break
    fi
  done
  if (( is_prime == 1 && num > 1 ))
  then
    echo $num
  fi
done

