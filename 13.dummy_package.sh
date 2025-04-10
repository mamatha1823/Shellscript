#!/bin/bash
dnf install no -y
if [ $? -ne 0]
then
 echo " installation failed"
 exit 1
else
 echo "installation is success"
fi