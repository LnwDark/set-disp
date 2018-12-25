#!/bin/bash
SERVER=8.8.8.8
ping -c2 ${SERVER} > /dev/null
if [ $? != 0 ]
then
echo $?;
sudo service network-manager restart
sudo systemctl restart networking
else
fi
