#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

echo $$			#当前shell进程的ID，即pid
echo "当前文件名:$0"			#当前文件名
echo "传递给脚本或函数的参数 $1"  #传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2
echo "传递给脚本或函数的参数个数:$#"  #传递给脚本或函数的参数个数。
echo "传递给脚本或函数的所有参数:$*"  #传递给脚本或函数的所有参数。
echo "传递给脚本或函数的所有参数:$@" #传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
echo "上个命令的退出状态，或函数的返回值:$?" #上个命令的退出状态，或函数的返回值。


echo "File Name: $0"
echo "First Parameter :$1"
echo "First Parameter :$2"
echo "Quoted values : $@"
echo "Quoted values : $*"
echo "Total Number of Parameters : $#"  #./Test3_var.sh Mrlu GAGA


#$* 和 $@ 都表示传递给函数或脚本的所有参数，不被双引号(" ")包含时，都以"$1" "$2" … "$n" 的形式输出所有参数。
#但是当它们被双引号(" ")包含时，"$*" 会将所有的参数作为一个整体，以"$1 $2 … $n"的形式输出所有参数；"$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数。
echo "\$*=" $*
echo "\"\$*\"=" "$*"

echo "\$@=" $@
echo "\"\$@\"=" "$@"

echo "print each param from \$*"
for var in $*
do 
	echo "$var"
done

echo "print each param from \$@"
for var in $@
do 
	echo "$var"
done

echo "print each param from \"\$*\""
for var in "$*"
do 
	echo "$var"
done

echo "print each param from \"\$@\""
for var in "$@"
do 
	echo "$var"
done
