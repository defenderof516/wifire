#! /bin/bash

#Colors
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
WHITE='\033[97m'
NC='\033[0m'

# Top
echo -e " ${RED} \nSelect The Interface For Monitor Mode : ${NC} "

#list the interfaces
echo  -ne "\n\t1.\t$(airmon-ng | grep "wlan" | awk '{print}' | cut -f 2,3,4,5,6 | head -1 | tail -1)"
echo  -ne "\n\t2.\t$(airmon-ng | grep "wlan" | awk '{print}' | cut -f 2,3,4,5,6 | head -2 | tail -1)"

#choosing interface
sleep 1
echo " "
echo " "
read -p "$(echo -e ${BLUE}"\tSelect The Interface :"${NC}) " in_face

#case for mon mode
case $in_face in
1)
	#Airmon-ng Kill

	xterm -e airmon-ng check kill

	#convert monitor mode

	airmon-ng | grep "wlan" | awk '{print}' | cut -f 2 | head -1   > Interface_1.txt

	in_face1="Interface1.txt"

	while IFS= read -r input
	do
		xterm -e airmon-ng start $input
	done < Interface_1.txt 
	echo -e "${WHITE} \v\t$(ifconfig | grep wl | awk -F ':' '{print $1}' | head -1 )${NC} ${YELLOW}  Successfully in Monitor Mode ${NC}" ;;
2)
	#Airmon-ng Kill

	xterm -e airmon-ng check kill

	#convert monitor mode

	airmon-ng | grep "wlan" | awk '{print}' | cut -f 2 |  tail -1   > Interface_2.txt

	in_face1="Interface2.txt"

	while IFS= read -r input
	do
		xterm -e airmon-ng start $input
	done < Interface_2.txt ;;
*)
	echo " Invaild Input.. !! " ;;
	
esac
