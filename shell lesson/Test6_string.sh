#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

#字符串

#单引号
str='this is a string'
echo "$str"

#双引号
your_name="qinjx"
str="Hello, is know your are \"$your_name\"! \n"
echo -e "$str"

echo -e $str $your_name #字符串拼接
echo ${#str}	#字符串取长度
echo ${str:0:5} #字符串裁剪

string="alibaba is a great company"
echo `expr index $string i`  #查找字符串
