#!/bin/bash
ipiv=$( wget -qO- ipv4.icanhazip.com )
echo "Your public IPv4 is $ipiv"
#GigeNET | Chicago, IL | http://chi.gigenet.com.speedtest.net/
wget -4 -O /dev/null http://speedtest.chi.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}'
#GigeNET | Los Angeles, CA | http://lax.gigenet.com.speedtest.net/
wget -4 -O /dev/null http://speedtest.lax.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}'
#GigeNET | Washington, DC | http://iad.gigenet.com.speedtest.net/
wget -4 -O /dev/null http://speedtest.iad.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}'
