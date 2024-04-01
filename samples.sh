#!/bin/bash

# script to check if sshd service is enabled

systemctl is-enabled sshd.service

---
#!/bin/bash
# script to find out if directory exists


if [ -d "/home/bob/caleston" ]
then
  echo "Directory exists"
else
  echo "Directory not found"
fi


---
#!/bin/bash
#Instructions
# 1: Read the user names in the file /home/bob/users file.
# 2: Output $user is a Linux user. for each user name in the file. $user represents the user name, and each output should be appended to a new line.
# 3: The output should be directed to the file /home/bob/userlist.txt



for user in $(cat /home/bob/users.txt)
do
  echo "$user is a Linux user" >> /home/bob/userlist.txt
done

---
#!bin/bash

# Instructions
# Write a script at /home/bob/ezyum.sh that appends a single user input to the command yum. It should then output Running the command: followed by the full command that would be formed using the user input. Lastly, it should run the full command formed with the user input.


# Answer
echo "Running the command: yum $1"
yum $1


---
#!/bin/bash
# create a script named perm.sh that makes the user execute but groups and users not able to execute the file

chmod 0100 /home/bob/dir
