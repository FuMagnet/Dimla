#!/bin/bash

# Installation von Net-Tools und Netplan
apt update && apt install net-tools netplan -y

# Schnittstelle umbenennen
echo 'GRUB_CMDLINE_LINUX="netcfg/do_not_use_netplan=true"' >> /etc/default/grub 
echo 'GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"' >> /etc/default/grub 

# grub update und löschen von netplan-ordner
update-grub
rm /etc/netplan/*

# Installation von ifupdown
apt install ifupdown -y

# Konfiguration von /etc/network/interfaces
echo auto lo > /etc/network/interfaces
echo iface lo inet loopback >> /etc/network/interfaces
echo >> /etc/network/interfaces
echo auto eth0 >> /etc/network/interfaces
echo iface eth0 inet dhcp >> /etc/network/interfaces

# Server Neustart
reboot now
