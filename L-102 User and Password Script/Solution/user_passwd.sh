#!/bin/bash

# Check if the script is being run as root
# -ne mean not equal
# UID=0 sudo user
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

# Prompt for username and password
# -s for security . ensure the password is entered without being displayed 
# -p option is used with the read command to display the prompt message.
read -p "Enter username: " username
read -s -p "Enter password: " password
echo

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists. Please choose a different username."
    exit 1
fi

# Create a new user with the provided username
#  -m create home directory
#-eq mean  equal
# $?=0 means that the previous command or script completed successfully 

useradd -m "$username" 2>/dev/null

if [[ $? -eq 0 ]]; then
    echo "User account created successfully."
else
    echo "Failed to create user account. Please try again."
    exit 1
fi

# Set the provided password for the new user
echo "$username:$password" | chpasswd

# Force the user to change their password upon first login
#-d 0, setting the last password change date to the Unix epoch, which is January 1, 1970.
chage -d 0 "$username"

# Display the username, password, and the host where the user was created.
echo
echo 'Username: '
echo "${username}"
echo
echo 'Password: '
echo "${password}"