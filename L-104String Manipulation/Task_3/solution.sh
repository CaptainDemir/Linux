#!/bin/bash

#-c count.

grep "Invalid user" auth.log | cut -d' ' -f8 | uniq -c > invalid_user.sh

grep "Invalid user" auth.log | cut -d' ' -f9 | uniq -c >> invalid_user.sh

#grep -v will display all the lines that do not match the specified pattern. remove from and user

cat invalid_user.sh | grep -v "from" | grep -v "user" > new_invaild_user.txt

