#!/bin/sh
#  upgrade_wheezy_jessie.sh - Simple (and cowboy) way of upgrading from Wheezy to Jessie
#  
#  ***This is ass-u-me you know what you are doing and have a good backup that ***
#  ***you can restore from if things hit the fan and your RPI cannot boot after upgrade.***
#
#  make sure everthing is up-to-date
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
#
#  change from using wheezy to jessie in package source list
sed -i 's/wheezy/jessie/g' /etc/apt/sources.list
#
#  now update/upgrade to Jessie - will take ~1.5hours to run
sudo apt-get update
sudo apt-get upgrade        # --assume-no | --assume-yes if you want to auto-respond to prompts
sudo apt-get dist-upgrade   # --assume-no | --assume-yes if you want to auto-respond to prompts
sudo apt-get autoremove
sudo apt-get autoclean
sudo reboot
