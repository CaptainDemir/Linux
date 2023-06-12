#!/bin/bash

# PEM Key File
pem_key_file="/path/to/key.pem"

# Remote hosts (EC2 instances)
remote_hosts=(
  "user@host1:/path/to/destination1"
  "user@host2:/path/to/destination2"
  "user@host3:/path/to/destination3"
)

# Source files/directories
source_files=(
  "/path/to/source/file1"
  "/path/to/source/directory1"
  "/path/to/source/file2"
)

# Iterate over remote hosts
for host in "${remote_hosts[@]}"; do
  host_parts=(${host//@/ })
  ssh_user=${host_parts[0]}
  ssh_host=${host_parts[1]}

  # Iterate over source files/directories
  for file in "${source_files[@]}"; do
    # Extract the file name from the source path
    file_name=$(basename "$file")

    # Copy the file to the remote host using SCP
    scp -i "$pem_key_file" -r "$file" "$host:$file_name"

    # SSH into the remote host and move the copied file to the destination directory
    ssh -i "$pem_key_file" "$ssh_user@$ssh_host" "mv $file_name ${host_parts[2]}/$file_name"
  done
done
