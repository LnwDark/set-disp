#!/bin/bash
echo "install"
sudo apt update && upgrade
sudo apt-get install fonts-thai-tlwg && unclutter && php 