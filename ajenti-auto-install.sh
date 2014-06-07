#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/ajenti-auto-install.sh | sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
sleep 2
echo  ":: Update and ugrade the system"
sleep 2 ; apt-get update && apt-get upgrade -y

sleep 4
clear
echo ":: Install Ajenti"
sleep 2 ; wget http://repo.ajenti.org/debian/key -O- | apt-key add -
echo "deb http://repo.ajenti.org/debian main main ubuntu" >> /etc/apt/sources.list.d/ajenti.list
apt-get update
apt-get install -y ajenti

sleep 4
clear
echo ":: Install Ajenti V"
sleep 2 ; apt-get install -y ajenti-v ajenti-v-nginx ajenti-v-mysql ajenti-v-php-fpm

sleep 4
clear
echo ":: Restart Ajenti"
sleep 2 ; service ajenti restart

sleep 4
clear
echo ":: Done! Login into Ajenti : https://<address>:8000 ||| login : root ; password : admin"
sleep 7
clear
