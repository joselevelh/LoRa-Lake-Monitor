#!/bin/bash
# This is a script to help setup the Raspberry Pi for the LoRa Temperature Monitor

LIB="RPI.GPIO adafruit-blinka adafruit-circuitpython-ssd1306 adafruit-circuitpython-framebuf adafruit-circuitpython-rfm9x"

# Update pi
echo "Starting update/upgrade"
sudo apt-get update
sudo apt-get upgrade
sudo pip3 install --upgrade setuptools

# Make Python3 Default
sudo apt-get install -y python3 git python3-pip

# Intall libraries
echo "Installing Libraries"
sudo pip3 install $LIB
echo "Install complete, rebooting..."
reboot
