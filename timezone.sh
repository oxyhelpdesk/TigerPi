#Script by Enny Jole '18
#Sets the proper timezone
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
TIMEZONE="America/Los_Angeles" #sets location as variable
echo $TIMEZONE > /etc/timezone #sends variable to timezone folder
cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime #copies location to localtime
