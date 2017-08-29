# TIGERPI OS README
## BY ENNY JOLE
------------
These are tools for the TigerPi OS used by the Occidental College TigerPi. TigerPi OS is created with PiBaker. More info on TigerPi can be found [here](helpdesk.oxycreates.org/kb/TigerPi).
## SETUP DETAILS
1. At first boot, the Pi will enable VNC, SSH, and connect to wifi.
1. The user password will be changed.
1. Then, xscreensaver, heirloom-mailx, and libnss3-tools will be installed.
1. The script directory will be created in the user folder.
1. The scripts will be downloaded from GitHub.
1. They will be unzipped and given proper permissions.
1. OpenSSL will then decrypt the metadata files for the mailx configuration.
1. Mailx will be configured, and the metadata files deleted. A crontab task for weekly SSH logs will be created.
1. OS updates will then occur.
1. The slideshow will then be configured to launch on boot after a short pause.
1. The timezone will then be set to Pacific Time.
1. A cronjob will be added to refresh the slideshow 3 times a day.
1. Two more cronjobs will be added to reboot the Pi weekly, and update it weekly as well
1. To indicate completion of this process, an email will be sent with the Pi's IP information

## AFTER SETUP
Two things must be done after setup:
### Disable the screensaver
Go to Menu > Preferences > Screensaver, set the mode dropdown to "Disable Screensaver"
### Change the hostname
1. Open Terminal and run "sudo raspi-config"
1. Select "Hostname"
1. Change "raspberrypi" to the device's name
