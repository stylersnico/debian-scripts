#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/update-isp-config.sh | sh
#Tested on debian 7.5 AMD64 with ISPConfig 3.0.5.4p1

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
echo  ":: Download the latest ispconfig 3 release ..."
sleep 3
cd /tmp
 wget http://www.ispconfig.org/downloads/ISPConfig-3-stable.tar.gz
 tar xfz ISPConfig-3-stable.tar.gz
 cd ispconfig3_install/install/
sleep 3
clear
echo  ":: Launch the update utility"
sleep 5
php -q update.php
