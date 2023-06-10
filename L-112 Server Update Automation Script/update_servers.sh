#!/bin/bash

# Check if servers.txt file exists
if [ ! -f "servers.txt" ]; then
  echo "servers.txt file not found"
  exit 1
fi

# Read servers from the file
mapfile -t servers < servers.txt

# Function to update a server
update_server() {
  local server=$1
  echo "Updating $server..."

  # Run necessary commands to update the server
  ssh user@"$server" "sudo apt update && sudo apt upgrade -y"
  
  if [ $? -eq 0 ]; then
    echo "Finished updating $server"
  else
    echo "Failed to update $server"
  fi
  echo
}

# Loop through the servers and update each one
for server in "${servers[@]}"
do
  update_server "$server"
done

echo "All servers updated successfully"
