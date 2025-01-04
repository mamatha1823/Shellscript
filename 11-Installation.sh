#!/bin/bash

USER_ID=$(id -u)

if [ $? -ne 0 ]
then 
echo "please try with root id"
fi