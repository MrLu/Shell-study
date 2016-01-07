#! /bin/bash

dir=$1
nameExt=$2
# open $dir
oldext=.png #替换的文字
newext=@2x.png #替换成的文字
cd $dir #进入当前文件夹
cout=0
for file in $(ls ./ | grep .$oldext)
do
	if test -f $file
	then
		echo ${file}是文件
		if [[ $file =~ @ ]]; then
			echo ${file}包含@
		else
			echo 执行变更
			name=$(ls $file | cut -d. -f1)
			mv $file ${name}$newext
			cout=`expr $cout + 1`
		fi
		
	fi
done
echo 操作了${cout}个文件
#打开文件夹
open ./