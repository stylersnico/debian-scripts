#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 7 Wheezy
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/auto-install-sources.sh | sh
#Tested on Debian 7.5 AMD64 hosted at OVH -> https://www.ovh.com/

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
sleep 2
echo  ":: Remove actual sources list"
sleep 2 ; rm /etc/apt/sources.list

sleep 4
clear
echo  ":: Download new sources list"
sleep 2 ; cd /etc/apt
wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/sources.list
sleep 3
clear
sleep 2
echo  ":: Do an update"
sleep 5 ; apt-get update
