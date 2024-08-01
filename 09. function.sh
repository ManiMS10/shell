#!/bin/bash

ID=$(id -u)

VALIDATE()
    if [ $? -ne 0 ]
    then
        echo "error: install fail"
        exit 1
    else
        echo "install success"
    fi


if [ $ID -ne 0 ]
then
   echo "error: ur not root user"
   exit 1
else
   echo "ur root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE



