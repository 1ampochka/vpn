#!/bin/bash
#while [[ varping -lt 1000 ]]
#do 	
	datetime=$(zdump +5)
	varping=$(ping -c 1 195.123.221.109 | cut -d= -f4) 
	varping=$varping | grep data.
	echo $varping
	#echo "$datetime $varping"
	#sleep 9
#done

#test=$(ls)
#echo $test'
