#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

#数组只支持一维数组
#定义数组

array_name=("Mrlu" "gaga")	#定义
array_name[2]="xuebao"	#定义
echo ${array_name[2]}	#获取

echo ${array_name[*]}	#获取数组所有元素
echo ${array_name[@]}	#获取数组所有元素

echo ${#array_name[n]}	#获取单个长度
echo ${#array_name[*]}	#获取数组长度
echo ${#array_name[@]}		