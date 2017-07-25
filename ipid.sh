#Script by Enny Jole
#Sends IP via email to the Help Desk; also confirms startup
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #environment
ifconfig | mailx -A helpdesk -s "My IP address is..." helpdesk@oxy.edu; #pipes the ifconfig results to an email to the Help Desk
