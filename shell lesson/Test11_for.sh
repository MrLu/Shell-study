#! /bin/bash

# Author : MrLu 
# Copyright (c) Mrlu
# Script follows here:

for var in 1 2 3 4 5 6
do
	echo "$var"
done


for var in "1 2 3 4 5 6"
do
	echo "$var"
done

for var in $HOME/.bash*
do
	echo "$var"
done

#while do done

COUNTER=0
while [ $COUNTER -lt 5 ]
do
    COUNTER=`expr $COUNTER + 1`
    echo $COUNTER
done


count=0
sum=0
while [ $count -lt 100 ]
do
	sum=`expr $sum + $count`
	count=`expr $count + 1`
done
echo "sum = $sum"


echo 'type <CTRL-D> to terminate'
echo -n 'enter your most liked film: '
while read FILM
do
    echo "Yeah! great film the $FILM"
done

#until
count=0
sum=0
until [ $count -gt 100 ]
do
	sum=`expr $sum + $count`
	count=`expr $count + 1`
done
echo "sum = $sum"
