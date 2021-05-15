#!/bin/bash
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
# L2TP route
ip route add 192.168.2.0/24 via 172.31.0.3 dev eth0
#ip route add 192.168.1.0/24 via 192.168.2.1 dev eth0
#bash
