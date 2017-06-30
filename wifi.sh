PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin #Executable environment
wpa_cli -i wlan0 add_network > network.txt; #sends new network to text file
sed -i '1NETWORK=' network.txt; #adds variable declaration to text file
file="network.txt"; #variable declaration for text file
NETWORK=$(cat "$file"); #variable declartion for network
echo $NETWORK; #initializes variable
wpa_cli -i wlan0 set_network $NETWORK ssid '"oxyairnet"'; #sets SSID to oxyairnet
wpa_cli -i wlan0 set_network $NETWORK key_mgmt NONE; #no password needed
wpa_cli enable_network $NETWORK; #actives connection
#Script by Enny Jole '18 
