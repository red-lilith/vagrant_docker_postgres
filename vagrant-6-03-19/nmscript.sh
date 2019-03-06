echo "" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "auto enp0s8" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "iface enp0s8 inet static" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "address 192.168.133.3" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "gateway 192.168.133.1" >> /etc/network/interfaces.d/50-cloud-init.cfg
echo "netmask 255.255.255.0" >> /etc/network/interfaces.d/50-cloud-init.cfg
sudo /etc/init.d/networking restart ; true
