#!/bin/bash

opcion=0

case $opcion in
    1) echo "Seleccione una opcion"
       read -n1 -p "Ingrese" o1
       case $o1 in
       1)
       sudo apt update && sudo apt upgrade -y
       ;;
       2)
       sudo apt list --upgradable
       ;;
       3) 
       sudo apt clean && sudo apt autoremove
       ;;
       esac
       ;;

    2) echo "Seleccione una opcion"
       read -n1 -p "Ingrese" o2
       case $o2 in
       1)
       mkdir linux-bootcamp-we && cd linux-bootcamp-we && touch linux-functions.txt history-linux.txt && cd .. 
       ;;
       2) 
       mkdir backups-bootcamp-we
       ;;
       3)
       tar -cvzf bkp.tar.gz ../Retos && mv bkp.tar.gz backups-bootcamp-we/ && cd  backups-bootcamp-we && tar -xvzf ./backups-bootcamp-we/bkp.tar.gz && cd ..
       esac
       ;;

    3) echo "Seleccione una opcion"
       read -n1 -p "Ingrese" o3
       case $o3 in
       1)
       date "+%d/%m/%Y %T"
       ;;
       2) 
       pwd 
       ;;
       3)
       whoami
       ;;
       4)
       uname -a
       ;;
       5)
       df -h
       ;;
       6)
       ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4
       ;;
       7)
       history > linux-bootcamp-we/history-linux.txt
       ;;
       8)
       ping google.com | head -n 4
       ;;
       esac
       ;;
 
    4) echo "Seleccione una opcion"
       read -n1 -p "Ingrese" o4
       case $o4 in
       1)
       tar -cvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz . 
       ;;
       2)
       cp backups-bootcamp-we/tp-terminal-bootcamp.tar.gz $HOME && cd $HOME && tar -xvzf tp-terminal-bootcamp.tar.gz .
       ;;
       3)
       cat functions.sh > linux-bootcamp-we/linux-functions.txt && cat linux-bootcamp-we/history-linux.txt
       ;;
       4)
       ls backups-bootcamp-we/
       ;;
       esac
       ;; 
esac
