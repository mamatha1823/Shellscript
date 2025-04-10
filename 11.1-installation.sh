#!/bin/bash
user_id=$(id -u)
#colours

R="\e[31m]"
G="\e[32m]"
N="\e[0m]"

check_user(){
    if [ $user_id -ne 0 ]
    then 
     echo  -e "$R user is not having the root access, please check $N"
     exit 1
    fi
}
    
Validate(){
    if [ $1 -ne 0 ]
    then
     echo -e " $ $R $2 is failed $N" 
     exit 1
    else
     echo -e " $ $G $2 is Success $N"
    fi
}
check_user

dnf list installed mysql
if [ $? -ne 0 ]
then
 dnf install mysql -y
 Validate $? "Installing mysql"
else
 echo "Mysql already installed"
fi
