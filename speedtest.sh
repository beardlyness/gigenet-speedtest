#!/bin/bash
ip=$( wget -qO- ipv4.icanhazip.com )
echo ""
echo "This script will download 1GB files from all GigeNET locations"
echo ""
echo "Your Public IPv4: $ip"
echo ""
echo "--------------------------------------------------"
echo "GigeNET | Chicago, IL | http://chi.lg.gigenet.com/"
echo "--------------------------------------------------"
chi=$( wget -O /dev/null http://speedtest.chi.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download Speed: $chi"
echo ""
echo "------------------------------------------------------"
echo "GigeNET | Los Angeles, CA | http://lax.lg.gigenet.com/"
echo "------------------------------------------------------"
lax=$( wget -O /dev/null http://speedtest.lax.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download Speed: $lax"
echo ""
echo "-----------------------------------------------------"
echo "GigeNET | Washington, DC | http://iad.lg.gigenet.com/"
echo "-----------------------------------------------------"
iad=$( wget -O /dev/null http://speedtest.iad.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download Speed: $iad"
echo ""
