#!/bin/bash

#AppInfo.plist文件 绝对路径
AppInfo_FILE_PATH="${SRCROOT}/BJEducation_student/DataAccess/AppInfo.plist"
DATE=$(date +%Y-%m-%d/%k:%M:%S)

#statements
editFilePath=$AppInfo_FILE_PATH
echo "找到需要需改的文件 : $editFilePath"
open ./
if [ -e "$editFilePath" ]; then
	echo "文件存在"
    defaults write "$editFilePath" archivetime "$DATE"
    # #修改文件
    echo "defaults write $editFilePath archivetime $DATE"

else 
	echo "文件不存在"
fi
