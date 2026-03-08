#!/bin/bash
figlet "System"
echo -n -e "\nDATE UTC:\t\t"; date +"%m/%d/%Y %H:%M:%S"
echo -n -e "HOSTNAME:\t\t"; hostname
echo -n -e "UPTIME:\t\t\t"; uptime -p
echo -n -e "USER:\t\t\t"; whoami

figlet "Memory"
free -h

figlet "Disk"
df -h /
