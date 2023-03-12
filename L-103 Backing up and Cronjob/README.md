# Project-103: 
## Description

You will be working in different roles during this project and assigned to various tasks. These tasks will be based on the problems faced by a DevOps in his/her daily life.

## Problem Statement
Companies have problems based on their infrastructures and needs. In this project, you will be working in different roles and you will be assigned some tasks which have backing up, security issues, user and password management, and some string manipulation duties. Sometimes, you need to prepair some bash script files or execute some commands, to be able to accomplish them. There are four tasks. Manager's instructions belonging them can be found below. Please read them carefully and fulfill requirements. Good Luck!


## L-103 Backing up and Cronjob

Imagine that you are working in Gaming company as DevOps Engineer. Recently, you have deployed a new version of firm's famous Game and it's content are being kept under `/home/ec2-user/data` in minute basis. In addition, your manager asked you to be backed `/etc`, `/boot`, and `/usr` up as well. So, `/home/ec2-user/data`, `/etc`, `/boot`, and `/usr` folders need to be backed up and placed in specific folder `/mnt/backup` in every 5 minutes. At the same time, since you should separate each file from others, you have to assign different name to backup files based on hostname of instance and the date-hour-minute of the backup. Each backup file has to be compressed with `.tgz` extension. You can not manage this dynamic process by yourself. You decided to create a bash script and define cronjob for executing this in every 5 minutes. Files which are  `/home/ec2-user/data`, `/etc`, `/boot`, `/usr` have to be backed up. Please write a bash script named `backup.sh` for this task.


|----Third_Part                   
|--------backup.sh                # To be delivered by students


```

### At the end of the project, following topics are to be covered;

- Bash Scripting

- Sed Command

- Grep Command

- Awk Command

- Cut Command

- Uniq Command

- String Manipulation

## Resources

- [Grep, Sed, Awk, Cut Commands](https://blog.knoldus.com/play-with-text-in-linux-grep-cut-awk-sed/)

- [Bash Scripting](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

- [Uniq Comand](https://www.geeksforgeeks.org/uniq-command-in-linux-with-examples/)


