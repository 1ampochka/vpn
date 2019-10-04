#!/bin/bash
#пингует хост 195.123.221.109 каждые 10 секунд и при необходимости перезапускает openvpn

while [[ varping -lt 1000 ]]
do 	
	datetime=$(zdump +5)
	#вырезает из вывода пинга время эхо пакета
	varping=$(ping -c 1 195.123.221.109 | grep time | cut -d ' ' -f 7 | cut -d= -f 2)
	varping=${varping//[^0-9]/}
	#вывод в файл время ответа и ожидает 10 секунд
	echo "$datetime ping $varping times"
	sleep 10
done

systemctl restart openvpn@vpn_lampochka.ovpn

