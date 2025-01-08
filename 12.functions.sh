#!/bin/bash

 user_id=$(id -u)
 V=$variables

 Validate(){
    if [ $1 -ne 0 ]
    then 
     echo -e "$R $2 .... is not  installed, please install $N"
     dnf install $2
     if [ $1 -ne 0 ]
     then 
      echo -e "$R  $2 installation failed, please check "
      exit 1
     else
      echo -e "$G $2 INSTALLATION  is success, please check "
     fi
    fi 
    }
dnf list installed  $V
Validate $? $V