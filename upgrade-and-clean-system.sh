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

echo ':: Update the system'
apt-get update

echo ':: Upgrade the system'
apt-get upgrade

echo ':: Use autoremove'
apt-get autoremove

echo ':: Clean the packages'
apt-get clean

echo ':: Done!'
