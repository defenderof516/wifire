#! /bin/bash

#Colors
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
WHITE='\033[97m'
NC='\033[0m'
 
echo -e "${GREEN}	__        _____ _____ ___ ____  _____  ${NC} "
echo -e "${GREEN}	\ \      / /_ _|  ___|_ _|  _ \| ____| ${NC} "
echo -e "${GREEN}	 \ \ /\ / / | || |_   | || |_) |  _|   ${NC} "
echo -e "${RED}	  \ V  V /  | ||  _|  | ||  _ <| |___  ${NC} "
echo -e "${RED}	   \_/\_/  |___|_|   |___|_| \_\_____| ${NC} "



echo -e ${RED}"\v1.Put Into Monitor Mode "
echo -e "2.Get Handshake File "
echo -e "3.Crack Password with Handshake File "
echo -e "4.Special Tools" ${NC}

read -p "$(echo -e ${BLUE} "Enter The Option :"${NC}) " opt


case $opt in
1)
	./Plugins/mon_con.sh ;;
2)
	./Plugins/handshaker.sh ;;
3)
	./Plugins/pass_cracker.sh ;;
4)
	echo -e "\v\t1.Wifi Jammer "
	echo -e "\v\t2.Wifi Monitoring "
	read -p "$(echo -e ${BLUE}"Enter The Option :" ${NC}) " opt_sp
	
	case $opt_sp in
	1)
		./Plugins/wifi_jammer.sh ;;
	2)
		./Plugins/wifi_monitor.sh ;;
	*)
		echo -e " INVALID INPUT " ;;
	esac ;;
*)
	echo -e "INVAILD INPUT" ;;
esac
