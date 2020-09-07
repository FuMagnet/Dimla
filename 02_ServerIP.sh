#!/bin/bash

# In diesem Skript werden die default IP Adressen festgelegt.

# Menu
clear
  echo
	echo "Server-Updater"
	echo "========================================================="
	echo "choose system for update:"
	echo
	echo " 1) Server1"
	echo " 2) Server2"
	echo " 3) Server3"
	echo " 4) Client1"
	echo " 5) Client2"
	echo
	echo "(q) quit program"
        echo "========================================================="
       
read input
case "$input" in


# Server1 Settings
"1")
  clear
    echo "Server1 wird eingerichtet..."
    echo "=========================================================" 
    echo
                # Konfiguration von /etc/network/interfaces
                echo auto lo > /etc/network/interfaces
                echo iface lo inet loopback >> /etc/network/interfaces
                
                echo >> /etc/network/interfaces
                echo auto eth0 >> /etc/network/interfaces
                echo iface eth0 inet static >> /etc/network/interfaces
                echo adress 192.168.0.10/24 >> /etc/network/interfaces
                echo gateway 192.168.0.1 >> /etc/network/interfaces
                dns-nameservers 192.168.0.10 >> /etc/network/interfaces
                dns-search host.intern >> /etc/network/interfaces
    echo
    echo "========================================================="
    read -p "press enter to continue ..."
;;
    
# Server2 Settings
"2")
  clear
    echo "Server2 wird eingerichtet..."
    echo "=========================================================" 
    echo
                # Konfiguration von /etc/network/interfaces
                echo auto lo > /etc/network/interfaces
                echo iface lo inet loopback >> /etc/network/interfaces
                
                echo >> /etc/network/interfaces
                echo auto eth0 >> /etc/network/interfaces
                echo iface eth0 inet static >> /etc/network/interfaces
                echo adress 192.168.0.11/24 >> /etc/network/interfaces
                echo gateway 192.168.0.1 >> /etc/network/interfaces
                dns-nameservers 192.168.0.10 >> /etc/network/interfaces
                dns-search host.intern >> /etc/network/interfaces
    echo
    echo "========================================================="
    read -p "press enter to continue ..."
;;    
    
# Server3 Settings
"3")
  clear
    echo "Server3 wird eingerichtet..."
    echo "=========================================================" 
    echo
                # Konfiguration von /etc/network/interfaces
                echo auto lo > /etc/network/interfaces
                echo iface lo inet loopback >> /etc/network/interfaces
                
                echo >> /etc/network/interfaces
                echo auto eth0 >> /etc/network/interfaces
                echo iface eth0 inet static >> /etc/network/interfaces
                echo adress 192.168.0.1/24 >> /etc/network/interfaces
                echo gateway 192.168.0.1 >> /etc/network/interfaces
                dns-nameservers 192.168.0.10 >> /etc/network/interfaces
                dns-search host.intern >> /etc/network/interfaces
    echo
    echo "========================================================="
    read -p "press enter to continue ..."
;;


    esac
done

exit 0
