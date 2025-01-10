#!/bin/bash
USER_ID=$(id -u)
Log_folder="/var/log/shell-script"
script_name=$(echo $0 | cut -d '.' -f2)
time=$(date +%Y-%m-%d-%H-%M-%S)
log_file="$Log_folder/$script_name-$time.log"
mkdir -p $Log_folder


##colours
R="\e[31m"
G="\e[32m"
N="\e[0m"

check_root(){
   if [ $USER_ID -ne 0 ]
   then
     echo -e " $R please switch to root ID  to proceed $N"  | tee -a $log_file
     exit 1
   fi
}

check_root

Validate(){
    if [ $1 -ne 0 ]
    then 
      echo -e "$R $2... is Failed $N" | tee -a $log_file
      exit 1
    else
      echo -e "$G  $2.. IS Success $N" | tee -a $log_file
    fi
}


Usage(){
     echo -e "$R usage is  package1, package2....$N"   | tee -a $log_file
 
}


echo -e " Script started executing at $G $(date)"

if [ $# -eq 0 ]
then
 Usage
fi 

for package in $@
do
  dnf list installed $package
  if [ $? -ne 0 ]
  then 
     #echo -e "$R $package is not installed, going to install $N" |tee -a $log_file
     dnf install $package
     Validate $? "$package installation"
  else
     echo -e "$G $package is already installed, nothing to do $N"  | tee -a $log_file
  fi
done

