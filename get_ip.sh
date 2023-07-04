#!/usr/bin/bash

for (( ip=1; ip<255; ip++ ))
	do 
		ping -c 1 192.168.1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
