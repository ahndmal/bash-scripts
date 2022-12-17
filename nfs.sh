
if [ -f "/etc/arch-release" ]; then

    echo "installing for ARCH"

 
else
  echo "installing for Ubuntu"

     ### SERVER
    wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.13.0.tar.gz
    tar -xf atlassian-confluence-7.13.0.tar.gz 

    # https://vitux.com/install-nfs-server-and-client-on-ubuntu/
    sudo apt-get update
    sudo apt install nfs-kernel-server
    sudo mkdir -p /mnt/sharedfolder
    sudo chown nobody:nogroup /mnt/sharedfolder
    sudo chmod 777 /mnt/sharedfolder
    sudo nano /etc/exports
    # add /mnt/sharedfolder clientIP(rw,sync,no_subtree_check)
    sudo exportfs -a
    sudo systemctl restart nfs-kernel-server
    # firewall

    ### Configuring the Client Machine
    sudo apt-get update
    sudo apt-get install nfs-common
    sudo mkdir -p /mnt/sharedfolder_client
    # $ sudo mount 192.168.100.5:/mnt/sharedfolder /mnt/sharedfolder_client
    sudo mount serverIP:/exportFolder_server /mnt/mountfolder_client

    ----------
    https://confluence.atlassian.com/doc/data-center-troubleshooting-203618.html

    netstat -gn
    netstat -rn

fi


