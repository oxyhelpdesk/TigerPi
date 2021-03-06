#Script by Enny Jole
#Enables email logging for SSH access
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
mkdir /home/pi/.certs; #creates certificate directory
certutil -N -f /home/pi/dd_script/pwdfile.txt -d ~/.certs; #encrpyts the certificate database
echo -n | openssl s_client -connect smtp.gmail.com:465 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ~/.certs/gmail.crt; #adds the certificate
sudo cat /home/pi/dd_script/account_settings.txt >> sudo /etc/nail.rc; #adds the account settings
rm /home/pi/dd_script/account_settings.txt /home/pi/dd_script/pwdfile.txt; #cleans up
