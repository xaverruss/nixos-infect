#!/bin/bash

# Prompt the user for the /dev/DISK value
read -p "Enter /dev/DISK value: " disk_value



# Replace "DISK" in script 1
sed "s|/dev/DISK|/dev/${disk_value}|g" "1-install-uefi.sh" > "1-install-uefi.sh.tmp"
mv 1-install-uefi.sh.tmp 1-install-uefi.sh

# Replace "DISK" in script 2
sed "s|/dev/DISK|/dev/${disk_value}|g" "2-install-uefi.sh" > "2-install-uefi.sh.tmp"
mv 2-install-uefi.sh.tmp 2-install-uefi.sh


echo "Replacement complete."
echo "Double check if DISKS have been replaced correctly."
echo " !!!!!!!"
echo "Double check the 2. install script if partitions are correctly set"