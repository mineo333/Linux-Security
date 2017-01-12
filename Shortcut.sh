#!/bin/bash 
echo Welcome to the Linux Security Cleaner
echo  DONT FORGET TO
echo Copy the README
echo Update Users according to README
echo Write down password if changed
echo Change passwords to more secure password
echo Look for malicious software
echo Good Luck
sleep 3
select opt in Gufw chkrootkit Lynis Listen_Ports Quit
do
    case $opt in
        Gufw)
            echo "You chose run GUFW"
            sleep 3
			cd ~
			sudo gufw
            ;;
        chkrootkit)
            echo "you chose to run chrootkit"
			cd ~
			sudo chkrootkit
            ;;
        Lynis)
            echo "you chose to run Lynis"
			cd ~
			cd /usr/local
			cd lynis
			sudo ./lynis audit system
			echo You may run this as many times as you want to keep track of security problems
			sleep 5
           ;;
	    "Listen_Ports")
	
            cat /etc/services > ports.txt 
	      echo Ports were copied
            
	     
            ;;
	Quit)
			break

	   ;;
    esac
done

