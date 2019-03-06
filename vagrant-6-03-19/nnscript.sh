echo "" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "auto enp0s8" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "iface enp0s8 inet dhcp" >> /etc/network/interfaces.d/50-cloud-init.cfg
sudo /etc/init.d/networking restart
