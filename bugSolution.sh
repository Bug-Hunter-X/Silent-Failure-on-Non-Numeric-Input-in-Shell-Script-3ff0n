#!/bin/bash

# Improved script that handles non-numeric input gracefully

total=0
while IFS= read -r num; do
  if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    echo "Warning: Skipping non-numeric line: $num"
    continue
  fi
  ((total += num))
done < numbers.txt

echo "Total: $total"