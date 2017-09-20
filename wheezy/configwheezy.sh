#!/bin/sh


# Make root passwordless for convenience.
sudo sed -i '/^root/ { s/:x:/::/ }' wheezy/etc/passwd
# Add a getty on the virtio console
echo 'V0:23:respawn:/sbin/getty 115200 hvc0' | sudo tee -a wheezy/etc/inittab
# Automatically bring up eth0 using DHCP
printf '\nauto eth0\niface eth0 inet dhcp\n' | sudo tee -a wheezy/etc/network/interfaces
# Set up my ssh pubkey for root in the VM
sudo mkdir wheezy/root/.ssh/
cat ~/.ssh/id_?sa.pub | sudo tee wheezy/root/.ssh/authorized_keys
