#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

#打印
myfile="/Users/mrlu-bjhl/Desktop/hello.html"

echo "\"It isd a Test\""

name="OK"
echo "$name It is a test"

mouth=8
echo "${mouth}-1-2009"

echo "OK!\n"
echo "It is a test"

echo "OK!\c"
echo "It is a test"

if [ -e $myfile ]		#重定向到文本
then
	#statements
	echo "It is a test" > $myfile
else
	echo "file is not exten"
fi

echo '$name\"' 		
echo `date`
