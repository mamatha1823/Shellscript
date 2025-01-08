#!/bin/bash
USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
package=$P
Check_root(){
if [ $USER_ID -ne 0]
then
 echo -e " $R please run with root it $N"
 exit 1
fi
}

Validate(){
if [ $1 -ne 0 ]
then
    echo - e" $R $2 is FAILED$N" 
else
    echo -e " $G $2 is success $N"
fi
}

Check_root

for $package in $@
do
 dnf  list installed $package
 if [ $? -ne 0 ]
 then
   echo  -e " $R $package is not installed ,going to install  $N"
   dnf install $package -y
   Validate $? "Installing $package"
 fi
done