#!/bin/bash

# Check if two numbers are provided as command line arguments
if [[ $# -ne 2 ]]; then
  echo "Error: Two numbers are required."
  exit 1
fi

# Extract the two numbers from the command line arguments
num1=$1
num2=$2

# Check if the provided arguments are valid numbers
if ! [[ $num1 =~ ^[0-9]+$ ]] || ! [[ $num2 =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid numbers provided."
  exit 1
fi

# Add the two numbers and display the result
result=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $result"