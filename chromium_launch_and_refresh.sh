#Script by Enny Jole '18
#This script closes Chromium and then reopens it
#The original refresh script emulated a key command to refresh the slideshow, causing it to stall at the first slide, or may have not worked at all
#Thus, this script is necessary to schedule three daily refreshes
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
killall chromium-browser; #terminates Chromium
export DISPLAY=:0.0; #sets the display to be used for the next script; necessary for it to work as a cronjob
/bin/bash /home/pi/dd_script/launch_chrome.sh > /dev/null; #launches Chromium with our needed settings
