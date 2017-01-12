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
select opt in Gufw chkrootkit Lynis Listen_Ports Quit DeleteMedia
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
	    Listen_Ports)
	
            cat /etc/services > ports.txt 
	      echo Ports were copied
            
	     
            ;;
	    DeleteMedia)
	    

find / -name "*.mp3" -type f -delete
find / -name "*.wav" -type f -delete
find / -name "*.wmv" -type f -delete
find / -name "*.mp4" -type f -delete
find / -name "*.mov" -type f -delete
find / -name "*.avi" -type f -delete
find / -name "*.mpeg" -type f -delete
find /home -name "*.jpeg" -type f -delete
find /home -name "*.jpg" -type f -delete
find /home -name "*.png" -type f -delete
find /home -name "*.gif" -type f -delete
find /home -name "*.tif" -type f -delete
find /home -name "*.tiff" -type f -delete
;;
	Quit)
			break

	   ;;
    esac
done

