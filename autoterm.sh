#Script by Enny Jole
#Autostarts terminal on reboot
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
mkdir /home/pi/.config/autostart;
mv /home/pi/dd_script/launch_chrome.sh.desktop /home/pi/.config/autostart;
