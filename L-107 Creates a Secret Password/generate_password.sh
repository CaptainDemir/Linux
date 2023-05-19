#!/bin/bash

# Define the length of the password
length=8

# Generate a random password
password=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c $length)

# Print the password
echo "Generated password: $password"
