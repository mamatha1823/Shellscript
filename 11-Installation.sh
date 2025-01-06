#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then 
    echo "please try with root id"
    exit 1
fi
dnf list installed  mysql 
if [ $? -ne 0 ]
then 
  echo "sql is not installed ,pls  install it "
  dnf install mysql -y
  if [ $? -ne 0 ]
  then 
    echo " sql is installation is done"
  fi
else
   echo "sql is already installed "
fi