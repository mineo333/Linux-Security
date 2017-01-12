#!/bin/bash 
#All of the stuff below is just install and WILL earn points
echo Welcome to the Linux Security Cleaner
echo  DON'T FORGET TO ;):
echo Copy the README
echo Update Users according to README
echo Write down password if changed
echo Change passwords
echo Look for malicious software
echo Good Luck :)
sleep 10
sudo apt-get upgrade
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean
sudo ufw enable
sudo apt-get install unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades
#Where installs end
#Now to install all programs:
sudo apt-get install gufw
cd /usr/local 
sudo git clone https://github.com/CISOfy/lynis
cd ~
sudo apt-get install chkrootkit

cd Downloads
mkdir Script_Stuff
cd
#Now all programs from the checklist are installed (Please post an issue if you see one more,it would be greatly appreciated)
#Now will be a menu to run all programs that were previously installed
#Other Linux commands run to make the system more secure


#This is the end of the menu
