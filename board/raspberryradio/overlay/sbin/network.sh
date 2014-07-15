#!/bin/ash

. /sdcard/conf/wifi.conf

startWifi() {
  ifdown -f $iface
  killall -q wpa_supplicant
  wpa_supplicant -Dwext -i $iface -c /etc/wpa_supplicant.conf -B
  ifconfig $iface $ip netmask $netmask up
  route add default gw $gateway
  sleep 30
}

startWifi

while [ 1 ]; do
   ping -c 1 $gateway & wait $!
   if [ $? != 0 ]; then
     startWifi
     sleep 1
   else sleep 10
   fi
done

