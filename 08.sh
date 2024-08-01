#!/bin/bash

ID=$(id -u)

if [ $ID -ge 0 ]
then
   echo "show error ur not root user"

fi