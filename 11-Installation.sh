#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then 
echo "please try with root id"
fi
dnf install mysql -y 