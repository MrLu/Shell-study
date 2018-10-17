#! /bin/bash
# 脚本帮助信息
help() {
	cat <<EOF
 Desc: 该程序用来自动创建
 Usage: ./module_init.sh <filepathname>
 Author: Mrlu
 License: Apache
EOF
 	exit 0
}

#这里通过判断$1是否存在判别,也可以通过$#判别,shift会改变两者的值,
while [[ -n "$1" ]]; do
	#statements
case $1 in
	-help|--help)
  help; break;; # function help is called
	-*)
  echo "error: no such option $1."; exit 1;;
	*) break;;
esac
done

dirname=$1

if [[ -z $dirname ]]; then
	#statements
	help	
	exit 0
fi

mkdir $dirname

cd $dirname

filepath=('ViewController' 'View' 'ViewModel' 'Model' 'Config' 'Style' 'Util' 'Service' 'Server')

for path in ${filepath[@]}
do
	echo "creat $path path"
	# mkdir $path
	# touch ./$path/.gitkeep
done


