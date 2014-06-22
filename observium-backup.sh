#!/bin/bash
#By Nicolas Simond -> http://www.nicolas-simond.com/
#The Abyss Project -> http://www.abyssproject.net/
#Compatiblity : Debian 7.5 and April 2014 Observium
#Use at your own risk !
#Tested on Debian 7.5 AMD64
#Get the script with : 
#    cd /usr && wget https://raw.githubusercontent.com/stylersnico/debian-scripts/master/observium-backup.sh
#chmod the script with :  chmod +x /usr/observium-backup.sh
#Use crontab to backup every day, per exemple :
#10 00 * * * root /usr/observium-backup.sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# Go to the opt folder
cd /opt

# Compress Observium folder
tar czf observium-backup.tar.gz observium

# create backup dir
mkdir /usr/backup-observium

# move backup to pampa/backup dir
mv observium-backup.tar.gz /usr/backup-observium

# chmod backup folder
chmod -R a+r /usr/backup-observium
