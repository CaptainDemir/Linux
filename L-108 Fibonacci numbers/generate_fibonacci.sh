#!/bin/bash

# Function to generate Fibonacci numbers
generate_fibonacci() {
    # Initialize variables
    num1=0
    num2=1
    count=0

    # Array to store Fibonacci numbers
    fib_array=()

    # Get the number of Fibonacci numbers to generate
    read -p "How many Fibonacci numbers would you like to generate? " num_count

    # Check if the input is a positive integer
    if ! [[ $num_count =~ ^[0-9]+$ ]] || [ $num_count -lt 1 ]; then
        echo "Invalid input. Please enter a positive integer."
        return
    fi

    # Generate Fibonacci numbers
    while [ $count -lt $num_count ]; do
        if [ $num1 -ne 0 ]; then
            fib_array+=("$num1")
            count=$((count + 1))
        fi

        next_num=$((num1 + num2))
        num1=$num2
        num2=$next_num
    done

    # Print the generated Fibonacci numbers
    echo "${fib_array[@]}"
}

# Call the function to generate Fibonacci numbers
generate_fibonacci
