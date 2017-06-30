#Script by Enny Jole
#Enables email logging for SSH access
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
mkdir /home/pi/.certs; #creates certificate directory
<<<<<<< HEAD
certutil -N -d ~/.certs -f pwdfile.txt; #encrpyts the certificate database
=======
certutil -N -f pwdfile.txt -d ~/.certs  #encrpyts the certificate database
>>>>>>> 47d5966ea9fa293518145986027c2284a9124369
echo -n | openssl s_client -connect smtp.gmail.com:465 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ~/.certs/gmail.crt; #adds the certificate
sudo cat /home/pi/dd_script/account_settings.txt >> /etc/nail.rc; #adds the account settings
rm /home/pi/dd_script/account_settings.txt /home/pi/dd_script/certutil.txt; #cleans up
