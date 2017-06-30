#Script by Enny Jole '18
#Adds cronjobs for the chrome refresh script
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
(crontab -l ; echo "0 6 * * * /bin/bash /home/pi/dd_script/chromium_launch_and_refresh.sh")| crontab -; #for every day at 6am
(crontab -l ; echo "0 12 * * * /bin/bash /home/pi/dd_script/chromium_launch_and_refresh.sh")| crontab -; #for every day at 12pm
(crontab -l ; echo "0 16 * * * /bin/bash /home/pi/dd_script/chromium_launch_and_refresh.sh")| crontab -; #for every day at 4pm
