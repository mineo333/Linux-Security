#!/bin/bash
select opt in Gufw chrootkit Lynis Listen_Ports Quit
do
    case $opt in
        Gufw)
            echo "You chose run GUFW"
			cd ~
			sudo gufw
            ;;
        chrootkit)
            echo "you chose to run chrootkit"
			cd ~
			sudo chrootkit
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
	Quit)
			break

	   ;;
    esac
done
