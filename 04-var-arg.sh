#!/bin/bash
P1=$1
P2=$2

echo "Hi $P1"
echo "Hi $P2"
echo "$P1 and $P2 LETS GO"
echo "all the variables passed are:$@"
echo "no of  the variables passed are:$#"
echo "Script name is:$0"
echo "pid of the script name executing now :$$"
echo "pid of last background process:$!"
echo "status of the previous command:$?"
echo "current working directory:$PWD"
echo "Home directory of current user:$HOME"