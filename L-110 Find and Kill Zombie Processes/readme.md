# Shell Script: Find and Kill Zombie Processes

This shell script function is designed to find and kill all the zombie processes on a Linux system.
## Use Case

Zombie processes can occur when a process has completed its execution but its exit status has not been collected by its parent process. These zombie processes can consume system resources and may indicate underlying issues or bugs in the system.

By using this shell script function to find and kill zombie processes, system administrators can proactively manage system health, optimize resource utilization, and ensure the stability and performance of their Linux systems.

## Prerequisites

- Linux System: This script is intended to run on a Linux-based operating system.
- Bash Shell: Ensure that your system has the Bash shell installed.

## Usage

Follow the steps below to use the script:

1. Open a terminal on your Linux system.
2. Create a new file using a text editor and copy the script into the file.
3. Save the file with a ".sh" extension (e.g., `kill_zombies.sh`).
4. Make the script executable by running the following command:

   ```bash
   chmod +x kill_zombies.sh
   ```

5. Execute the script by running the following command:

   ```bash
   ./kill_zombies.sh
   ```

## Script Function

The script function `kill_zombies()` performs the following tasks:

1. Finds all the zombie processes using the `ps` command.
2. Kills each zombie process using the `kill` command with signal `-9` (SIGKILL).

The script outputs messages to indicate the progress and status of the operation.


## Acknowledgments

- The script function is designed to work on Linux systems using Bash.
- It is important to understand the consequences of forcefully killing processes with SIGKILL (signal 9). Use caution when using this script and ensure it is necessary to terminate zombie processes.

