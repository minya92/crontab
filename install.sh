#!/bin/sh 
sudo apt-get install screen nano cron git
sudo mkdir /var/crontab
sudo mkdir /var/crontab/bin
sudo mkdir /var/crontab/logs
sudo mkdir /var/crontab/apps
cd /var/crontab/bin
wget http://lapshina.net/crontab/run
wget http://lapshina.net/crontab/testApp-start
cd ../apps
git clone https://github.com/minya92/crontab.git
rename ./crontab ./testApp
cd ./testApp
git fetch
git pull
echo "VISIT http://localhost:3333/"
node server.js
