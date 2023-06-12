# Files Copy Script for Remote EC2 Instances

This project provides a shell script that allows you to copy files recursively to remote EC2 instances using a PEM key file. The script utilizes the SCP (Secure Copy) and SSH (Secure Shell) utilities to securely transfer files to the specified hosts.

## Use Case
It could be deploying a web application to multiple EC2 instances in a load-balanced environment or you need to send some files. The script automates the file transfer process, saving time and effort compared to manually copying files to each EC2 instance.It ensures consistency by deploying the same set of files to all instances simultaneously, minimizing discrepancies and potential issues.

## Prerequisites

Before using the script, ensure that you have the following prerequisites:

1. A PEM key file: You should have a valid PEM key file associated with your EC2 instances.

2. SSH and SCP utilities: These utilities should be installed on the machine from which you plan to execute the script. If they are not already installed, you can install them using the package manager of your operating system.

## Usage

Follow the steps below to use the script:

1. Clone the repository or download the script file to your local machine.

2. Open the script file (`copy_files_to_ec2.sh`) in a text editor.

3. Set the value of the `pem_key_file` variable to the path of your PEM key file.

4. Update the `remote_hosts` array with the details of the remote EC2 instances you want to copy files to. Each element in the array should be in the format `user@host:/path/to/destination`, where:
   - `user` is the SSH user for the remote host.
   - `host` is the hostname or IP address of the remote host.
   - `/path/to/destination` is the destination directory on the remote host where you want to copy the files.

5. Update the `source_files` array with the files and directories you want to copy. Each element in the array should be the absolute path of a file or directory on your local machine.

6. Save the script file.

7. Open a terminal or command prompt and navigate to the directory where the script file is located.

8. Make the script file executable by running the following command:

   ```bash
   chmod +x copy_files_to_ec2.sh
   ```

9. Run the script by executing the following command:

   ```bash
   ./copy_files_to_ec2.sh
   ```

   The script will start copying the files to the specified remote hosts using SCP and SSH. Progress and status messages will be displayed in the terminal.

10. Once the script finishes executing, check the destination directories on the remote hosts to verify that the files have been copied successfully.

## Limitations

- This script assumes that you have the necessary permissions to connect to the remote hosts and copy files using SSH and SCP.
- It is recommended to test the script with a small number of files or directories before using it for a large-scale copy operation.
- The script does not handle errors that may occur during the file transfer process. It assumes a successful transfer of files to the remote hosts.

## Contributing

Contributions to this project are welcome. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

