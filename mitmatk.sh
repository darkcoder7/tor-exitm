#!/bin/sh
iptables -F
iptables -t nat -I OUTPUT -p tcp -m owner --uid-owner 106 --dport 80 -j DNAT --to-destination 127.0.0.1:8080
iptables -t nat -I OUTPUT -p tcp -m owner --uid-owner 106 --dport 443 -j DNAT --to-destination 127.0.0.1:8080
mitmproxy -T --host
iptables -F
