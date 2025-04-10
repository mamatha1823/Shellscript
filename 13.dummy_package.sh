#!/bin/bash
dnf install no -y
if [ $? -ne 0]
do
 echo " installation failed"
 exit 1
else
 echo "installation is success"
done