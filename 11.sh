#!/bin/bash

ID=$(id -u)
echo "script name: $0"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "error: $2... fail"
        exit 1
    else
        echo "$2.... success"
    fi
}

if [ $ID -ne 0 ]
then
   echo "error: ur not root user"
   exit 1
else
   echo "ur root user"
fi

yum install mysql -y

VALIDATE $? "installed mysql"

yum install git -y

VALIDATE $? "installed git"