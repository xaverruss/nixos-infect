# Install Helper 
echo "installer helper 1"
echo "Replace DISK with the disk you wanna use"
echo "Carefull with NVME SSDs, double check partitioning"

# Common
mkfs.ext4 -L nixos /dev/DISK1
mount /dev/disk/by-label/nixos /mnt
nixos-generate-config --root /mnt
