
# sda - sda1
# For partition /sda1

 sudo lsblk -f /dev/sda1

 sudo mount -t ntfs /dev/sda1 /mnt
 #       sudo ntfsfix /dev/sdXn  # Replace /dev/sdXn with the actual partition
