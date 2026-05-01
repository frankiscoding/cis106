#!/bin/bash
echo -en "\nCurrent date in UTC: \t"; date -u
echo -e "\nDisk Space usage /\t"; df -h /
echo -e "\nMemory information"; free -h
echo -en "\nNetwork node name\t"; uname -n
echo -en "\nProcessor and OS type\t"; uname -po
