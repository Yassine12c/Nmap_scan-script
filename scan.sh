#!/bin/bash

# ===============================
# Logo ASCII et titre
# ===============================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}              .__     "
echo -e " ___.__. ____ |  |__  "
echo -e "<   |  |/ ___\\|  |  \\ "
echo -e " \\___  \\  \\___|   Y  \\"
echo -e " / ____|\\___  >___|  /"
echo -e " \/         \/     \/ ${NC}"
echo ""
echo -e "${GREEN}   Simple Nmap Scan Script - Yassine Cherkaoui${NC}"
echo ""




echo "${YELLOW}Entrez l'adresse IP ou le site :${NC}"
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
