#!/bin/bash


echo -e "OS details: `uname -a`"
echo -e "\n\n"
echo -e "shells available"
echo -e "\n"
cat /etc/shells 
echo -e "\n\n"
echo -e "CPU specs"
echo -e "\n"
lscpu 
echo -e "\n\n"
echo -e "memory details"
echo -e "\n"
free -h
echo -e "\n\n"
echo -e "hard disk"
echo -e "\n"
lsblk
echo -e "\n\n"
echo -e "mounted filesystems"
echo -e "\n"
df -Th


