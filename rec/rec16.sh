#!/bin/bash
echo "Enter the number of units consumed:"
read units
if [ $units -le 100 ]; then
  rate=5
elif [ $units -le 200 ]; then
  rate=7
else
  rate=10
fi
bill=$((units * rate))
echo "Units Consumed: $units"
echo "Rate per unit: $rate"
echo "Total Bill: $bill"
