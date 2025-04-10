#!/bin/bash
user_id=$(id -u)
Log_file=/var/log/shellscript
mkdir -p Log_file
time=$(date +%y-%m-%D-%H-%M-%s)
script_name=$(echo "$0 | cut -d -name "*"
log_file=$Log_file/$script_name-$time.log      # format of the log file 

COLOURS  ## for highlighting the statements
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Check_root(){
 if [ $user_id -ne 0 ]
 then 
    echo "run with root"
    exit 1
 fi
 }

Usage(){
  if [ $# eq 0 ]
  then 
    echo -e " $R usage: sudo sh $0 package1 package2 ....$N"
  fi
}
Check_root
Usage