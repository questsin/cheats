whoami

ip addr show 
ip addr show eth0
hostname -i
ping $ip -sP $Subnet # skip port scan
masscan $Subnet  ‐‐top-ports 100 # skip port scan
masscan $Subnet  ‐‐ports 0-65535 
hydra -l student -P /usr/share/wordlists/rockyou.txt $ip ssh
nmap -p 22 --script ssh-brute --script-args userdb=users,passdb=pass 192.40.231.3
#port forwarding  witn netcat
nc -lp 45678 | nc -lp 45679
nc $ip $port


chmod +x script.js

file -I pub_xre_internal_staging_TuneEvent-2.txt 
pub_xre_internal_staging_TuneEvent-2.txt: text/plain; charset=utf-8

iconv -f utf-8 -t ascii//TRANSLIT
split -l 200000 filename

#share a folder
pwd
mkdir share

apt-get update
apt-get install parallel
gnu parallel
| parallel -j400 --timeout 160 'bash ./1.sh {}'

find . -type f -exec grep 'needle' {} \;
grep -ir $keyword | head