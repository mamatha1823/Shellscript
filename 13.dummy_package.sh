#!/bin/bash
dnf list installed -y

dnf install no -y
if [ $? -ne 0 ]
then
 echo " installation success"
 exit 1
else
 echo "installation is failed"
fi