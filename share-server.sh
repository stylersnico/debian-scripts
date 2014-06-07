#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Related topic -> http://wp.me/p2RtI7-Hz
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/share-server.sh | sh
#Tested on debian 7.5 AMD64

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
sleep 2
echo  ":: Install components"
sleep 2 ; apt-get install -y minidlna bind9 hddtemp dhcp3-server hdparm lm-sensors netatalk smartmontools squid3 samba

sleep 4
clear
echo ":: Install Ajenti"
sleep 2 ; wget http://repo.ajenti.org/debian/key -O- | apt-key add -
echo "deb http://repo.ajenti.org/debian main main ubuntu" >> /etc/apt/sources.list.d/ajenti.list
apt-get update
apt-get install -y ajenti
sleep 4
clear
sleep 2 ; echo ":: Follow the end of the tutorial : http://wp.me/p2RtI7-Hz"
