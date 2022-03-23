#!/bin/bash

#Free Memory
free -h > ~/backups/freemem/free_mem.txt

#Disk Usage
du -h > ~/backups/diskuse/disk_usage.txt

#List Open Files
lsof > ~/backups/openlist/open_list.txt

#Free Disk Space
df -h > ~/backups/freedisk/free_disk.txt
