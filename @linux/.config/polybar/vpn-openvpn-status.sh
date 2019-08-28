#!/bin/sh

# Get VPN Name
printf " : " && (pgrep -a openvpn$ | head -n 1 | awk '{print $5}' | cut -d '.' -f 2 | cut -c 2- && echo off) | head -n 1
