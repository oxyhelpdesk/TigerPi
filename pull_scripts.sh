#Script by Enny Jole '18
#Retrieves the latest TigerPi release and updates non-first boot scripts accordingly
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
wget -O /home/pi/dd_script/ "https://github.com/ENG-Jole/TigerPi/archive/master.zip"; #downloads latest master branch
unzip /home/pi/dd_script/TigerPi-master.zip -d /home/pi/dd_script;
mv /home/pi/dd_script/TigerPi-master/. /home/pi/dd_script;
/bin/bash /home/pi/dd_script/cleanup.sh;
