#!/bin/sh
#
# Start wifi connection
#

. /sdcard/conf/network.conf

# starts the wifi connection and waits for the link to come up
start() {
  ifdown -f $iface
  killall -q wpa_supplicant
  wpa_supplicant -Dwext -i $iface -c /sdcard/conf/wifi.conf -B
  ifconfig $iface $ip netmask $netmask up
  route add default gw $gateway
  unreachable=1;
  count=0;
  echo "Waiting for connection to come up "
  while [ $unreachable -ne "0" || $count -le $timeout ];
  do
     ping -q -c 1 $gateway &> /dev/null; 
     unreachable=$?; 
     sleep 1;
     count = $count + 1;
     echo -n ".";
  done
  echo "Connection established after $count seconds"
}

# monitor the wifi connection for possible loss
monitor () {
   # check every 30 seconds for connection loss
   while [ 1 ]; do
      ping -c 1 $gateway & wait $!
      if [ $? != 0 ]; then
        startWifi
      else
        sleep 30
      fi
   done
}


case "$1" in
  start)
          start
          ;;
  monitor)
          monitor
          ;;
  *)
          echo "Usage: $0 {start|monitor}"
          exit 1
          ;;
esac

exit $?
