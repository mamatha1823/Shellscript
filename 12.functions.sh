#!/bin/bash

 user_id=$(id -u)
 #V=$variables

 R="\e[31m
 N="\e[0m
 G="\e[32m

 Validate(){
    if [ $1 -ne 0 ]
    then 
      echo -e "$R  $2  failed, please check $N "
      exit 1
     else
      echo -e "$G $2   is success $N "
    fi 
    }
if [ $user_id -ne 0 ]
then
 echo -e "please run with root access"
 exit 1
fi

dnf list installed git
if [ $? -ne 0]
then 
  echo -e "$R git is not installated $N"
  dnf install git -y
  Validate $? "git instalation is"
fi

dnf list installed mysql 
if [ $? -ne 0 ]
then 
 echo -e "$R mysql is not installed $N"
 dnf install git -y
 Validate $? "mysql installation"
fi