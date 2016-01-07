#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

Hello () {
   echo "Url is http://see.xidian.edu.cn/cpp/shell/"
}

Hello


#函数调用
# funWithReturn(){
#     echo "The function is to get the sum of two numbers..."
#     echo -n "Input first number: "
#     read aNum
#     echo -n "Input another number: "
#     read anotherNum
#     echo "The two numbers are $aNum and $anotherNum !"
#     return $(($aNum+$anotherNum))
# }

# funWithReturn
# #capture value returnd by last command
# ret=$?
# echo "the sum of two numbers is $ret!"

#嵌套函数
# number_one () {
#    echo "Url_1 is http://see.xidian.edu.cn/cpp/shell/"
#    number_two
# }
# number_two () {
#    echo "Url_2 is http://see.xidian.edu.cn/cpp/u/xitong/"
# }
# number_one

#函数参数
funWithParam(){
    echo "The value of the first parameter is $1 !"
    echo "The value of the second parameter is $2 !"
    echo "The value of the tenth parameter is $10 !"
    echo "The value of the tenth parameter is ${10} !"
    echo "The value of the eleventh parameter is ${11} !"
    echo "The amount of the parameters is $# !"  # 参数个数
    echo "The string of the parameters is $* !"  # 传递给函数的所有参数
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73


funWithReturn(){
    echo "parament of The function...${1}"
}
funWithReturn 0
