#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "error: ur not root user"
   exit 1
else
   echo "you r root user"

fi

   yum install mysql -y

if [ $? -ne 0 ]
then
    echo "error: install is fail"
    exit 1
else
    echo "install is success"

f1
    yum install git -y  