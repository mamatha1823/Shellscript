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
   echo " sql is installation is failed"
   exit 1;
  else
   echo "sql is successfully installed"
  fi
else
   echo "sql is already installed "
fi

dnf list installed git -y
if [ $? -ne 0 ]
then
   echo "git is not installed , going to install"
   dnf install git -y
   if [ $? ne 0 ]
   then 
     echo "git is successfully installed"
   else
     echo "git installation failed,please check"
     exit 1
   fi
else
   echo "Already Git is installated"
fi

