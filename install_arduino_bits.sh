#!/bin/sh
#  install_arduino_bits.sh - simple script to install the bits to program Arduino from RPI via USB adapter

#
#  install supporting packages
sudo apt-get install avrdude arduino-core arduino-mk
#
#  if the GUI is needed:
#  sudo apt-get install arduino
#
#  ***Programing via GPIO is also possible, but can be a PITA to wire up, but...***
#  sudo apt-get install python-dev python-rpi.gpio git
#  sudo git clone https://github.com/openenergymonitor/avrdude-rpi.git ~/avrdude-rpi && ~/avrdude-rpi/install
