#!/bin/bash

sudo groupadd plugdev
sudo groupadd dialout
sudo usermod -a -G plugdev $USER
sudo usermod -a -G dialout $USER
sudo cp Setup/Linux/*.rules /etc/udev/rules.d
sudo udevadm control -R
