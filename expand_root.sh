#Script by Enny Jole '18
#Expands filesystem
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
sudo raspi-config nonint do_expand_rootfs; #this calls a script that's the backbone of the raspi-config interactive utility.
