#!/bin/bash

# Set the recipient email address
recipient="******@gmail.com"

# Set the email subject
subject="Test Email"

# Set the email body
body="This is a test email sent from a shell script."

# Send the email
echo "$body" | mail -s "$subject" "$recipient"
