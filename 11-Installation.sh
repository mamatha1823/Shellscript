#!/bin/bash

USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


if [ $USER_ID -ne 0 ]
then 
    echo -e "$R please try with root id $N"
    exit 1
fi
dnf list installed  mysql 
if [ $? -ne 0 ]
then 
  echo -e "$R sql is not installed ,pls  install it $N"
  dnf install mysql -y
  if [ $? -ne 0 ]
  then 
   echo -e "$R sql is installation is failed $N"
   exit 1;
  else
   echo  -e "$G sql is successfully installed $N"
  fi
else
   echo  -e "$G sql is already installed $N"
fi

dnf list installed git -y
if [ $? -ne 0 ]
then
   echo "git is not installed , going to install"
   dnf install git -y
   if [ $? ne 0 ]
   then 
     echo "git installation failed,please check"
     exit 1
   else
     echo "git is successfully installed"
   fi
else
   echo "Already Git is installated"
fi

