#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

myUrl="http://www.baidu.com"
myNum=10
your_name="MrLu"
echo $your_name
echo ${your_name}

your_name="GAGA"   #变量重定义
echo $your_name

#your_name="GAGA" #变量只读
#readonly your_name
#your_name="Mrlu" #报错

unset your_name #变量删除
echo $your_name #没有脚本输出