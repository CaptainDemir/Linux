#!/bin/bash

# Check if a number is provided as command line argument
if [[ $# -ne 1 ]]; then
  echo "Error: A number is required."
  exit 1
fi

# Extract the number from the command line argument
number=$1

# Check if the provided argument is a valid number
if ! [[ $number =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid number provided."
  exit 1
fi

# Reverse the number
reversed=""
while [ $number -gt 0 ]; do
  digit=$(( number % 10 ))
  reversed="${reversed}${digit}"
  number=$(( number / 10 ))
done

# Print the reversed number
echo "The reverse of $1 is: $reversed"