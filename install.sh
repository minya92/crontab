#!/bin/sh 
apt-get install screen nano cron git
mkdir /var/crontab
mkdir /var/crontab/bin
mkdir /var/crontab/logs
mkdir /var/crontab/apps
cd /var/crontab/bin
wget http://lapshina.net/crontab/run
wget http://lapshina.net/crontab/testApp-start
chmod 755 ./run
chmod 755 ./testApp-start
cd ../apps
git clone https://github.com/minya92/crontab.git ./testApp
cd ./testApp
/var/crontab/bin/run testApp
echo "VISIT http://localhost:3333/"