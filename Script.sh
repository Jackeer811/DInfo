#!/usr/bin/bash
#Created by: AlbertFarm

# Start code
clear
# Start Installation

echo ''

dpkg -s 'termux-api' &> /dev/null

if [ $? -ne 0 ]
        then
            echo "Termux-api: no instalado."
	    echo -e "\e[92m #Instalando Termux-api... \e[0m"
	    pkg install termux-api
        else
            echo -e "\e[92m Termux-api: instalado. \e[0m"
fi

dpkg -s 'screenfetch' &> /dev/null

if [ $? -ne 0 ]
        then
            echo "Screenfetch: no instalado."
	    echo -e "\e[92m #Instalando screenfetch... \e[0m"
            apt install screenfetch
        else
            echo -e "\e[92m Screenfetch: instalado. \e[0m"
fi
echo ''

clear

#End installation

echo -e '\e[94m________  .___        _____       
\______ \ |   | _____/ ____\____  
 |    |  \|   |/    \   __\/  _ \ 
 |    `   \   |   |  \  | (  <_> )
/_______  /___|___|  /__|  \____/ 
        \/         \/            \e[94m'


echo ''
echo -e "\e[93mBy: Jackeer811 \e[0m"
echo ''
echo '--------------------------------------------------'
echo ''

echo -e "\e[92m #Información del dispositivo: \e[0m"
echo ''
echo -e "\e[93m #Información de la batería:  \e[0m"
termux-battery-status
echo ''
echo -e "\e[93m #Información de la red: \e[0m"
termux-wifi-connectioninfo
echo ''
echo -e "\e[93m #Ubicación: \e[0m"
termux-location
echo ''
echo -e "\e[93m #Lista de contactos: \e[0m"
termux-contact-list
echo ''
echo -e "\e[93m #Otra información del dispositivo: \e[0m"
echo ''
screenfetch
echo ''
echo '-------‐----------------‐-------------------------'
# End code
