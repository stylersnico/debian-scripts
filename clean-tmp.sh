#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/clean-tmp.sh | sh
#Tested on debian 7.5 AMD64

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
echo  ":: Use at your own risk !"
echo  ":: This script use rm -rf * command !"
echo  ":: Waiting 10 seconds you can use Ctrl+c to cancel !"
sleep 10
echo  ":: Clean temp folder"
sleep 2 ; cd /tmp
rm -rf *
