#! /bin/bash

#Colors
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
BLUE='\033[94m'
WHITE='\033[97m'
NC='\033[0m'

#Install dep
echo -e "${YELLOW} Install The Dependencies...${NC} "

echo -e "${RED}$(sudo apt-get update)${NC}"
echo -e "${RED}$(sudo apt-get install -y aircrack-ng)${NC}"
echo -e "${RED}$(sudo apt-get install -y xterm)${NC}"
echo -e "${RED}$(sudo apt-get install -y gnome-terminal)${NC}"

#config files
chmod +x Plugins/mon_con.sh
chmod +x Plugins/handshaker.sh
chmod +x Plugins/pass_cracker.sh
chmod +x Plugins/wifi_jammer.sh
chmod +x Plugins/wifi_monitor.sh

#End Comment

echo -e "${GREEN} Now You Can Run The Tool By ./wifire.sh ${NC}"
