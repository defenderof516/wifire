#! /bin/bash

#Colors
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
WHITE='\033[97m'
NC='\033[0m'



read -p  "$(echo -e ${BLUE}"\v\tEnter The Path Of The File :"${NC}) " fpath


read -p  "$(echo -e ${BLUE}"\v\tDo You Have Any Dictionary File(y/n) :"${NC}) " dic_check 

if [ $dic_check == y ]
then
	read -p  "$(echo -e ${BLUE}"\v\tEnter The Path Of The Dictionary File :"${NC}) " dic_path
	
	aircrack-ng $fpath -w $dic_path 
elif [ $dic_check == n ]
then
	read -p  "$(echo -e ${BLUE}"\v\tDo You Want To Use Rockyou.txt File As a Dictionary File(y/n) :"${NC}) " rock_check
	if [ $rock_check == y ]
	then 
		aircrack-ng $fpath -w /usr/share/eaphammer/wordlists/rockyou.txt
	elif [ $rock_check == n ]
	then
		sleep 2
		echo -e"${YELLOW} Exiting..........${NC}"
	else
		echo -e "${YELLOW} INVAILD INPUT${NC} "
	fi
else
	sleep 2
	echo -e "${YELLOW} Exiting.............${NC}"
fi
