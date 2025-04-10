#!/bin/bash
dnf list installed -y
dnf install number  -y
if [ $? -ne 0 ]
then
 echo " installation success"
 exit 1
else
 echo "installation is failed"
fi