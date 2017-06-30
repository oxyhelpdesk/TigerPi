# TIGERPI OS README
## BY ENNY JOLE
------------
These are tools for the TigerPi OS used by the Occidental College TigerPi. TigerPi OS is created with PiBaker. More info on TigerPi can be found at helpdesk.oxycreates.org/kb/TigerPi
## SETUP DETAILS
At first boot, the Pi will enable VNC, SSH, and connect to wifi
The user password will be changed.
Then, xscreensaver, heirloom-mailx, and libnss3-tools will be installed.
The script directory will be created in the user folder.
The scripts will be downloaded from GitHub.
They will be unzipped and given proper permissions.
OpenSSL will then decrypt the metadata files for the mailx configuration.
Mailx will be configured, and the metadata files deleted. A crontab task for weekly SSH logs will be created.
OS updates will then occur.
The slideshow will then be configured to launch on boot after a short pause.
The timezone will then be set to Pacific Time.
A cronjob will be added to refresh the slideshow 3 times a day.
Two more cronjobs will be added to reboot the Pi weekly, and update it weekly as well
To indicate completion of this process, an email will be sent with the Pi's IP information
The Pi will then expand its filesystem, and reboot.

## AFTER SETUP
Two things must be done after setup:
### Disable the screensaver
Go to Menu > Preferences > Screensaver, set the mode dropdown to "Disable Screensaver"\
### Change the hostname
Open Terminal and run "sudo raspi-config"
Select "Hostname"
Change "raspberrypi" to the device's name
