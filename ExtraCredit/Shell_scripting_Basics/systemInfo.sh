#!/bin/bash
echo "Current date in UTC: "; date -u
echo "Disk Space usage /"; df -h /
echo "Memory information"; free -h
echo "Network node name"; uname -n
echo "Processor and OS type"; uname -po
