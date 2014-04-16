#!/bin/bash
####
#Change Tor Identity .sh for Openbox
#Author: https://github.com/steadfastCharlie
#Share: 
####

#Copy this shell script to /wherever_u_want/
#Add the following line to your Openbox menu:
#terminator --command="./wherever_u_want/myIP.sh"
#What is Openbox? >> http://openbox.org/

clear
EXT1=`wget http://cfajohnson.com/ipaddr.cgi -O - -q`
##NOTE: -----^  this wont work unless you do this:
##  sudo apt-get install -y tor tor-geoipdb privoxy
##  nano /etc/wgetrc
##  	http_proxy = http://localhost:8118
##		save the file and exit
##  nano /etc/privoxy/config
##  	uncomment the line below, save the file and exit
##      forward-socks5             /     127.0.0.1:9050 .
##NOTE: NO. I didn't mean uncomment the line in this script :P

echo -e "\nExternal IP: $EXT1"
echo ' '
sudo service tor restart
sleep 4
EXT2=`wget http://cfajohnson.com/ipaddr.cgi -O - -q`
echo -e "\nExternal IP: $EXT2"
echo ' '
read -p "Press any key to continue . . . " -n1 -s
clear

exit 0

##DON'T FORGET TO CHMOD
