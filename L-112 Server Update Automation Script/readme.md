
# Server Update Automation Script

This shell script automates the process of updating a list of servers with the latest security patches. It is designed to simplify the task of keeping multiple servers up-to-date and secure.

## Prerequisites

- Bash (Bourne Again SHell) is required to run this script.
- SSH access to the target servers is necessary.
- The script assumes the target servers are running a Debian-based Linux distribution (e.g., Ubuntu).

## Getting Started

1. Clone or download this repository to your local machine.

2. Modify the `servers.txt` file to include the list of server names or IP addresses that need to be updated. Each server should be on a separate line.

3. Ensure you have passwordless SSH access set up for the target servers, or be prepared to provide the necessary password during script execution.

4. Open the `update_servers.sh` file in a text editor.

5. Replace `'user'` in the SSH command (`ssh user@$server`) with the actual username you use to connect to the servers.

6. Save the modifications and make the shell script executable:

   ```bash
   chmod +x update_servers.sh
   ```

7. Execute the script:

   ```bash
   ./update_servers.sh
   ```

   The script will connect to each server listed in `servers.txt` using SSH and update the packages by running `sudo apt update` and `sudo apt upgrade -y` commands.

8. Monitor the script output to ensure the updates are performed successfully on all servers. Once the script finishes, you should see a message indicating the successful completion of the updates.

## Customization

- If your target servers use a different package manager (e.g., `yum` for CentOS or Fedora), modify the script's update commands accordingly.

- You can modify the `servers.txt` file to include additional or remove existing servers as needed.

- Feel free to adapt the script to your specific environment and requirements. For example, you may want to include additional tasks like restarting services after the updates or sending notifications upon completion.

## Security Considerations

- Ensure you have appropriate SSH security measures in place, such as using SSH keys instead of passwords, to protect access to the target servers.

- Only grant necessary privileges to the user specified in the script for running package updates on the servers.

- Regularly review and update the list of servers in `servers.txt` to include the latest server information.


## Disclaimer

The script provided in this project is for demonstration purposes only. Use it at your own risk.

## Acknowledgments

This project was created using [Bash](https://www.gnu.org/software/bash/), a widely-used shell scripting language. The script structure and example were inspired by real-world system administration tasks.