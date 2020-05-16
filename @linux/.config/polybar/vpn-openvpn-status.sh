#!/bin/sh

# Get VPN Name
printf " : " && (pgrep -a openvpn$ | head -n 1 | awk '{print $4}' | cut -d '.' -f 1 | cut -c 1- && echo off) | head -n 1
