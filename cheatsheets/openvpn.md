# openvpn

# azure
1. setup a vpn server
2. B1s
   1. ubuntu
   2. ports: 80, 443,22
   3. hdd
   4. static public ip
   5. networking: allow 1194

# commands
systemctl enable openvpn
apt install xrdp
service xrdp start
service xrdp-sesman start
systemctl enable xrdp
openvpn $file.ovpn
shutdown -r now

# apps
putty
openvpn

# files
/etc/openvpn/openvpn.conf
