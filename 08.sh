#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "error: ur not root user"
else
   echo "you r root user"

fi