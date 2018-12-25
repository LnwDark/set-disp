#!/bin/bash
echo "check update"
sudo apt update 
sleep 2s
echo 'check upgrade'
sudo apt upgrade
sleep 2s
echo 'install fonts-thai'
sudo apt-get install fonts-thai-tlwg
sleep 2s
echo 'install unclutter'
sudo apt-get install unclutter
sleep 2s
echo 'install php'
sudo apt-get install php
