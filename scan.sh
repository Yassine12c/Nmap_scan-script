#!/bin/bash


#!/bin/bash

echo " _   _                          ____                  "
echo "| \ | | __ _ _ __ ___   ___    / ___| ___ _ __  _   _ "
echo "|  \| |/ _\` | '_ \` _ \ / _ \  | |  _ / _ \ '_ \| | | |"
echo "| |\  | (_| | | | | | |  __/  | |_| |  __/ | | | |_| |"
echo "|_| \_|\__,_|_| |_| |_|\___|   \____|\___|_| |_|\__,_|"
echo "                                                      "
echo "       Simple Nmap Scan Script - Yassine Cherkaoui"
echo ""




echo "============================"
echo "	  OUTIL SIMPLE DE SCAN NMAP   "
echo "============================="
echo "Entrez l'adresse IP ou le site :"
read cible

echo ""
echo "Choisissez le type de scan :"
echo "1 - Scan rapide (100 ports)"
echo "2 -Scan complet (1000 ports)"
echo "3 - Détecttion des services"
echo "4 - Scan avancé (os + scripts)"
echo "5 - Ping scan (machine active)"
echo ""

read choice

if [ "$choice" == "1" ]; then
	echo "Scan rapide..."
	nmap -F $cible
elif [ "$choice" == "2" ]; then 
	echo "Scan complet..."
	nmap $cible
elif [ "$choice" == "3" ]; then
	echo "Détection des services..."
	nmap  -sV $cible
elif [ "$choice" == "4" ]; then
	echo "Scan Avancé"
	sudo nmap -A $cible
elif [ "$choice" == "5" ]; then
       echo "Ping scan..."
	nmap -sn $cible

else
    echo "Choix invalide"
fi
