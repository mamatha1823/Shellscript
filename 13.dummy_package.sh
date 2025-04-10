#!/bin/bash
dnf list installed -y
dnf install number  -y
if [ $? -ne 0 ]
then
 echo " installation failed "
 exit 1
else
 echo "installation success "
fi