#!/bin/bash

 user_id=$(id -u)
 #V=$variables

 Validate(){
    if [ $1 -ne 0 ]
    then 
      echo -e "$R  $2  failed, please check "
      exit 1
     else
      echo -e "$G $2   is success "
    fi 
    }
dnf list installed git
Validate $? "listing git"