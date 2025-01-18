#!/bin/bash

# This script attempts to process a file containing numbers, but it has a subtle bug.
# The bug is related to how the script handles unexpected input.

# We'll use a file named 'numbers.txt' for input. Create this file with some numbers:
echo "10" > numbers.txt
echo "20" >> numbers.txt
echo "abc" >> numbers.txt # This line introduces an error
echo "30" >> numbers.txt

# The script processes each line of the file and sums the numbers
total=0
while IFS= read -r num; do
  ((total += num))
done < numbers.txt

echo "Total: $total"