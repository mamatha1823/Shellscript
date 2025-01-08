#!/bin/bash

 user_id=$(id -u)
 #V=$variables

 Validate(){
    if [ $1 -ne 0 ]
    then 
      echo -e "$R  $2 installation failed, please check "
      exit 1
     else
      echo -e "$G $2 INSTALLATION  is success, please check "
    fi 
    }
dnf list installed git
Validate $? git