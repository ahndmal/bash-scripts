
# sda - sda1
# For partition /sda1

 sudo lsblk -f /dev/sdc1

 sudo mount -t ntfs /dev/sdc1 /mnt
 #       sudo ntfsfix /dev/sdXn  # Replace /dev/sdXn with the actual partition
