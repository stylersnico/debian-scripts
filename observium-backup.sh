#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 7.5 and April 2014 Observium
#Use at your own risk !
#Tested on Debian 7.5 AMD64
#Get the script with : 
#    cd /opt && wget https://raw.githubusercontent.com/stylersnico/debian-scripts/master/observium-backup.sh
#chmod the script with :  chmod +x /opt/observium-backup.sh


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
#Stop cron service and wait 90s for the end of the Observium scheduled scripts
/etc/init.d/cron stop
sleep 90

# Go to the opt folder
cd /opt

# Compress Observium folder
tar czvf observium-backup.tar.gz observium


# chmod backup folder
chmod -R a+r /opt/observium-backup.tar.gz

#Relaunch discovery and poller scripts
cd /opt/observium
./discovery.php -h all
./poller.php -h all

#Restart cron
/etc/init.d/cron start

