 ##  chmod +x disk_space_warning.sh
 
 - The sed s/%//g command is used for omitting the percent sign from the output of df -Ph.

 - df is the command to report file system disk space usage, while the options -Ph specify POSIX output and human-readable, meaning, print sizes in powers of 1024.

- awk(1) is used for extracting the desired fields from output of the df(1) command.