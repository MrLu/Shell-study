#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

val=`expr 2 + 2`
echo "total value : $val"

a=10
b=20
val=`expr $a + $b`
echo "a + b = $val"

val=`expr $a - $b`
echo "a - b = $val"

val=`expr $a \* $b`
echo "a * b = $val"

val=`expr $b / $a`
echo "b / a = $val"

val=`expr $b % $a`
echo "b % a = $val"

if [ $a == $b ] 
then
	echo "a is equal to b"
fi

if [ $a != $b ] 
then
	echo "a is NOT equal to b"
fi

#关心运算
echo -e "\n关系运算"
a=10
b=20
if [ $a -eq $b ]
then
   echo "$a -eq $b : a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi
if [ $a -ne $b ]
then
   echo "$a -ne $b: a is not equal to b"
else
   echo "$a -ne $b : a is equal to b"
fi
if [ $a -gt $b ]
then
   echo "$a -gt $b: a is greater than b"
else
   echo "$a -gt $b: a is not greater than b"
fi
if [ $a -lt $b ]
then
   echo "$a -lt $b: a is less than b"
else
   echo "$a -lt $b: a is not less than b"
fi
if [ $a -ge $b ]
then
   echo "$a -ge $b: a is greater or  equal to b"
else
   echo "$a -ge $b: a is not greater or equal to b"
fi
if [ $a -le $b ]
then
   echo "$a -le $b: a is less or  equal to b"
else
   echo "$a -le $b: a is not less or equal to b"
fi

echo -e "\n 布尔运算"
a=10
b=20
if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a -lt 100 -a $b -gt 15 : returns true"
else
   echo "$a -lt 100 -a $b -gt 15 : returns false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a -lt 100 -o $b -gt 100 : returns true"
else
   echo "$a -lt 100 -o $b -gt 100 : returns false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a -lt 100 -o $b -gt 100 : returns true"
else
   echo "$a -lt 100 -o $b -gt 100 : returns false"
fi

#字符串运算
echo -e "\n字符串运算"
a="abc"
b="efg"
if [ $a = $b ]
then
   echo "$a = $b : a is equal to b"
else
   echo "$a = $b: a is not equal to b"
fi
if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi
if [ -z $a ]
then
   echo "-z $a : string length is zero"
else
   echo "-z $a : string length is not zero"
fi
if [ -n $a ]
then
   echo "-n $a : string length is not zero"
else
   echo "-n $a : string length is zero"
fi
if [ $a ]
then
   echo "$a : string is not empty"
else
   echo "$a : string is empty"
fi

#文件测试运算符
echo -e "\n文件测试运算符"

file="/Users/mrlu-bjhl/Desktop/hello.html"

#是否存在
if [ -e $file ]
then
   echo "File exists"
else
   echo "File does not exist"
fi

#是否为空
if [ -s $file ]
then
   echo "File size is zero"
else
   echo "File size is not zero"
fi

#只读
if [ -r $file ]
then
	echo "file has read access"
else
	echo "file does not have read access"
fi

#读写
if [ -w $file ]
then
   echo "File has write permission"
else
   echo "File does not have write permission"
fi

#是否是可执行文件
if [ -x $file ]
then
   echo "File has execute permission"
else
   echo "File does not have execute permission"
fi

#是否是普通文件
if [ -f $file ]
then
   echo "File is an ordinary file"
else
   echo "This is sepcial file"
fi

#是否是目录
if [ -d $file ]
then
   echo "File is a directory"
else
   echo "This is not a directory"
fi
