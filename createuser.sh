#!/bin/bash 
clear
echo -e "Redhat User Creation"
echo -e "--------------------"
echo -e "Reading Users File.."

for x in `cat /root/userslist`
do
	useradd $x
	echo "redhat" | passwd --stdin $x 2&> /dev/null
	echo -e "$x  - created successfully" 
done 

