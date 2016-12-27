#!/bin/bash
ip=$( wget -qO- ipv4.icanhazip.com )
echo "Your public IPv4 is $ip"
echo "GigeNET | Chicago, IL | http://chi.lg.gigenet.com/"
chi=$( wget -O /dev/null http://speedtest.chi.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "$chi"
echo "GigeNET | Los Angeles, CA | http://lax.lg.gigenet.com/"
lax=$( wget -O /dev/null http://speedtest.lax.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "$lax"
echo "GigeNET | Washington, DC | http://iad.lg.gigenet.com/"
iad=$( wget -O /dev/null http://speedtest.iad.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "$iad"
