PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
killall chromium-browser;
export DISPLAY=:0.0;
/bin/bash /home/pi/dd_script/launch_chrome.sh > /dev/null;
