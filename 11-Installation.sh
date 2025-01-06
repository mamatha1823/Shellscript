#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then 
    echo "please try with root id"
    exit 1
fi
dnf list installed  mysql 
if ( $? -ne 0 )
then 
  echo "sql is not installed going to install it "
  dnf install mysql -y
else
   echo "sql is already installed "
fi