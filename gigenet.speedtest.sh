#!/usr/bin/env bash
#===============================================================================================================================================
#
# Licensed under the GNU GENERAL PUBLIC LICENSE, Version 3.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.gnu.org/licenses/gpl-3.0.en.html
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#===============================================================================================================================================
# title            :GigeNET SpeedTest
# description      :SpeedTest script for all three locations for GigeNET.
# author           :A Project by: Lunar, Kirk, Beard.
# contributors     :Lunar, Kirk, Beard
# date             :01-24-2019
# version          :0.0.2 Alpha
# os               :Debian/Ubuntu (Debian 7 - 10 | Ubuntu 12.04 - 18.10)
# usage            :bash gigenet.speedtest.sh filesize-(100MB/1000MB/1GB etc)
# notes            :If you have any problems feel free to make a report on GitHub.
#===============================================================================================================================================

      # Fetch for SpeedTest info for selected local.

        if [ -z $1 ]; then
           echo "GigeNET SpeedTest | You must specify a test file size: (100MB | 1000MB/1GB)"
           exit
        fi

        case $1 in
             100|100mb|100MB)

             read -r -p "Please select an option || 1: | Chicago, IL | 2: | Los Angeles, CA | 3: | Washington, DC  | "  REPLY
               case "${REPLY,,}" in
                 1)
                 clear
                   echo "GigeNET | Chicago, IL | 100MB Test | http://chi.lg.gigenet.com"
                   chi=$( wget -O /dev/null http://speedtest.chi.gigenet.com/100mb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $chi"
                   ;;
                   2)
                   clear
                   echo "GigeNET | Los Angeles, CA | 100MB Test | http://lax.lg.gigenet.com"
                   lax=$( wget -O /dev/null http://speedtest.lax.gigenet.com/100mb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $lax"
                   ;;
                   3)
                   clear
                   echo "GigeNET | Washington, DC | 100MB Test | http://iad.lg.gigenet.com"
                   iad=$( wget -O /dev/null http://speedtest.iad.gigenet.com/100mb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $iad"
                   ;;
                   [nN]|[nN][oO])
                   echo "You have said no? We cannot work without your permission!"
                   ;;
                   *)
                   echo "Invalid response. You okay?"
                   ;;
                 esac

                ;;
             1|1gb|1GB|1000|1000mb|1000MB)
             read -r -p "Please select an option || 1: | Chicago, IL | 2: | Los Angeles, CA | 3: | Washington, DC  | "  REPLY
               case "${REPLY,,}" in
                 1)
                 clear
                   echo "GigeNET | Chicago, IL | 1GB/1000MB Test | http://chi.lg.gigenet.com"
                   chi=$( wget -O /dev/null http://speedtest.chi.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $chi"
                   ;;
                   2)
                   clear
                   echo "GigeNET | Los Angeles, CA | 1GB/1000MB Test | http://lax.lg.gigenet.com"
                   lax=$( wget -O /dev/null http://speedtest.lax.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $lax"
                   ;;
                   3)
                   clear
                   echo "GigeNET | Washington, DC | 1GB/1000MB Test | http://iad.lg.gigenet.com"
                   iad=$( wget -O /dev/null http://speedtest.iad.gigenet.com/1gb.img 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
                   echo "Download Speed: $iad"
                   ;;
                   [nN]|[nN][oO])
                   echo "You have said no? We cannot work without your permission!"
                   ;;
                   *)
                   echo "Invalid response. You okay?"
                   ;;
                 esac
                ;;
             *)
                echo "Sorry, that file size is not supported by GigeNET."
        esac
