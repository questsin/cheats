export RESOURCE_GROUP=[sandbox resource group name]
export AZURE_REGION=centralus
export AZURE_APP_PLAN=popupappplan-$RANDOM
export AZURE_WEB_APP=popupwebapp-$RANDOM
sudo apt update && sudo apt upgrade -y
sudo apt update && sudo apt dist-upgrade -y
mongod --version
sudo systemctl status mongodb
sudo apt-get install -y mongodb
//list open ports
 sudo lsof -i -P -n | grep LISTEN 
netstat -tulpn | grep LISTEN
sudo ss -tulwn
last reboot | less
last -x | less
grep -hr --include \*.cs using . | sort -u 
func start &> ~/output.txt &
pkill func
curl "http://localhost:7071/api/simple-interest" -w "\n"
STORAGEACCT=learnstorage$(openssl rand -hex 5)
 curl https://api.github.com/users/questsin/gists | grep git_pull_url > gist2.sh
## https://www.torproject.org/
sudo apt-get install tor
torify curl ...
htop --better ps 
sudo apt update
sudo apt upgrade
apt-get install ntp
sntp --version
sudo nano /etc/ntp.conf
timedatectl set-ntp 1
sudo apt install xrdp
sudo apt install remmina
ssh-keygen -t rsa -b 4096
ssh-copy-id -i ~/.ssh/id_rsa.pub azureuser@myserver
ssh [username]@[public_ip_address]
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
//smb mount
sudo apt install cifs-utils
sudo mkdir /mnt/fileshare1
sudo mount -t cifs //FILESHARE_URL_WITHOUT_HTTPS /mnt/fileshare1 -o vers=3.0,username=STORAGE_ACCOUNT_NAME
sudo mount -t cifs //FILESHARE_URL_WITHOUT_HTTPS /mnt/fileshare1 -o vers=3.0,username=STORAGE_ACCOUNT_NAME,password=STORAGE_ACCOUNT_KEY,dir_mode=0777,file_mode=0777,serverino
df -h
. sudo nano /etc/passwd

systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
systemctl enable openvpn
systemctl enable xrdp
service xrdp start
shutdown -r
openvpn $file.ovpn
curl -sSL https://get.docker.com | sh