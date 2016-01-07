#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

#命令替换 `command`

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "uptime is $UP"

#变量替换

echo ${var:-"Variable is not set"}
echo "1 - value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - value of var is ${var}"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - value of var is ${var}"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"