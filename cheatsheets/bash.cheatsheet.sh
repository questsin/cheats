.bash_profile
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
export PATH=~/.local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

//bash //Perl //Python
#!/bin/bash 
//.sh
#!/usr/bin/perl
// .pl
#!/usr/bin/python 
//.py
alias egrep='egrep --color=auto'
alias explore='xdg-open'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias komodo='/opt/Komodo/lib/mozilla/komodo'
alias l='ls -CF'
alias la='ls -A'
alias lchrome='/opt/google/chrome/chrome --allow-file-access-from-files'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias sl='"/opt/Sublime Text 2/sublime_text"'
 
//disk info & mount T1 @ /dev/sda1 UUID=1282497682495EFB
sudo fdisk -l
ls -l /dev/disk/by-uuid
 
//sympolic link
mv /tmp /mnt/new/location/tmp
ln -s /mnt/new/location/tmp /tmp
 
//rsync
sudo rsync -aXS --exclude='/*/.gvfs' /home/. /media/home/.
 
//mounting relative
sudo mkdir /old
sudo mount -t ext3 /dev/sda1 /old
 
//color ls
alias ls='ls -aF --color=always'
 
//Filesystem diskspace usage:
alias dus='df -h'
 
//installed modules
lsmod | head
 
//remove unsused modules 
//You can make these changes permanent by removing lp from /etc/modules and adding both lp and floppy to /etc/modprobe.d/blacklist (or blacklist.conf). 
sudo modprobe -r lp
sudo modprobe -r floppy
 
//restart ,start, stop services
sudo /etc/init.d/networking restart
sudo /etc/init.d/cron stop
 
//boot up manager
sudo apt-get install bum
 
//check for the CPU's
sudo lshw -class cpu
cat /proc/cpuinfo
 
//remove unused stuff
sudo apt-get install deborphan
 
//SCRIPT
# Removing one unused dependency may make another become unused.
# Repeat until all dependencies are removed
while [ " $(deborphan)" != " " ]; do
  sudo apt-get remove-purge $(deborphan)
done
 
//compile from source
mkdir src
cd src
apt-get --compile source gcalctool
rm -rf gcalctool*
 
//list of running processes
ps -ef
 
//disk space
df -h . 
 
//diskstats
sudo apt-get install sysstat
watch-interval 0.5 iostat
 
//vidstats
lspci -v | more
 
//network stats
netstat -i inet
 
//backtick
t=`date`
echo $t
 
//calc
expr 1 + 5
//execute permision
chmod +x test12.py
//get a webpage
wget url
curl 
 
#!/bin/bash
if [ $# -eq 0 ]
then
echo "usage: jic [filename]"
exit 1
fi
if ! [ -e $1 ]
then
echo "$1 does not exist!"
exit 1
fi
ext=$(date +%y%m%d.%H%M%S)
jic=$1.$ext
cp $1 $jic
chmod -x $jic
echo "SAVED: $jic"

//cut example
cat file.txt | grep "string" | cut -d " " -f 4

//tr
tr?

//
for num in `seq 1 254`; do
    echo num
done