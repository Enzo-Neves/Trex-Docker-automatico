#!/usr/bin/bash

RED='\033[0;31m'
PURPLE='\033[0;35m'
YEL='\033[1;33m'
NOCOLOR='\033[0m'

echo -e "${YEL}[-]${NOCOLOR} ${RED}Iniciando Script${NOCOLOR}"
echo -e "${PURPLE}[-]${NOCOLOR}${RED}By Dias & Neves${NOCOLOR}"
sudo docker kill trex_docker
sudo docker pull trexcisco/trex 
sudo docker run  -d --name trex_docker --rm -it --privileged --cap-add=ALL trexcisco/trex 

echo -e "${YEL}[-]${NOCOLOR} INSIRA QUANTIDADES DE INTERFACES: "
echo -e "${YEL}[-]${NOCOLOR} CUIDADOS COM TYPOS: "


read quantidades 


for (( i = 2  ; i <= "$quantidades" ; i+=2))
do
 let veth=i+1
    sudo docker exec -it trex_docker sh -c "sudo ip link add veth$i type veth peer name veth$veth"
    sudo docker exec -it trex_docker sh -c " ip link set up dev veth$i &&  ip link set up dev veth$veth"

    done

sudo docker exec -it trex_docker sh -c "cd /var/trex/v2.41/ && ./t-rex-64 -i" 

