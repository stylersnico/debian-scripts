#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/apache2-worker-and-php-fpm-auto-install.sh | sh
#Tested on debian 7.5 AMD64 with ISPConfig 3.0.5.4p1

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
clear
echo  ":: Apache2 mpm worker, PHP5-FPM, FCGI, suExec, Pear, and mcrypt"
sleep 3 ; apt-get install apache2 apache2.2-common apache2-doc apache2-mpm-worker libapache2-mod-fastcgi php5-fpm php-apc apache2-utils libexpat1 ssl-cert php5 php5-common php5-gd php5-mysql php5-imap php5-cli php5-cgi libapache2-mod-fcgid apache2-suexec php-pear php-auth php5-mcrypt mcrypt php5-imagick imagemagick libruby libapache2-mod-ruby libapache2-mod-python php5-curl php5-intl php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
sleep 3
clear
echo  ":: Register apache mods"
sleep 5
a2enmod actions alias fastcgi && a2enmod fcgid && a2enmod suexec rewrite ssl actions include && a2enmod dav_fs dav auth_digest && service apache2 restart
sleep 2
clear
echo  ":: Make php5-fpm config file"
sleep 5 ; cd nano /etc/apache2/conf.d/php5-fpm.conf
wget https://raw.githubusercontent.com/stylersnico/debian-scripts/master/php5-fpm.conf
sleep 3
clear
echo  ":: Done, now restart service and clear the terminal"
sleep 2 ; service apache2 restart && service php-fpm restart
sleep 3
clear
