#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/upgrade-and-clean-system.sh | sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
echo -e '033[5;31;40m:: Update the system\033[0m'
sleep 2 ; apt-get update

echo -e '\033[5;31;40m:: Upgrade the system\033[0m'
sleep 2 ; apt-get upgrade

echo -e '\033[5;31;40m:: Use autoremove\033[0m'
sleep 2 ; apt-get autoremove

echo -e '\033[5;31;40m:: Clean the packages\033[0m'
sleep 2 ; apt-get clean

echo -e '\033[5;31;40m:: Done!\033[0m'
sleep 5
clear
