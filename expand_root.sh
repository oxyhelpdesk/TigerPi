#Script by Enny Jole '18
#Expands filesystem
#Typically PiBaker will do this for us, and this script has been removed from the first boot sequence. Run this or use SSH if it doesn't work
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
sudo raspi-config nonint do_expand_rootfs; #this calls a script that's the backbone of the raspi-config interactive utility.
