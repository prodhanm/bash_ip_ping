#!/usr/bin/bash

ip_prefix=<input ip prefix>

for (( ip=1; ip<255; ip++ ))
	do 
	        ping -c 1 $ip_prefix.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
