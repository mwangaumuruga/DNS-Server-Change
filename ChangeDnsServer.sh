#script that you can use to change the DNS server in the resolv.conf file on Linux and modify the file permissions:


#!/bin/bash

# Define the DNS server IP addresses
primary_dns="208.67.222.222"
backup_dns="9.9.9.9"

# Change file permissions of resolv.conf to executable
sudo chmod +x /etc/resolv.conf

# Set the new DNS server configuration in resolv.conf
sudo bash -c "echo 'nameserver $primary_dns' > /etc/resolv.conf"
sudo bash -c "echo 'nameserver $backup_dns' >> /etc/resolv.conf"

echo "DNS server configuration updated successfully."

