#!/bin/bash
envStr=$1

EnterpriseExportOptionsPlist="EnterpriseExportOptionsPlist.plist"
DEVELOPMENT_TEAM="9A479M7UJP"
workspace="xdfapp.xcworkspace"
scheme="xdfapp"
configuration="Debug"
buildPath="./build"
archivePath="./build/JenkinsArchive"
exportPath="./build/JenkinsIPAExport"
ExportOptionsPlist=$EnterpriseExportOptionsPlist
PRODUCT_BUNDLE_IDENTIFIER="com.xdf.palmXDF.test"

#fir.im key
firApiToken="ee7011a020a6a51242312040808962ba"
firAppID="57a44ca4ca87a85ce0000e5b"

#蒲公英key
_api_key="25aa115b736c539ed44c02f5f43dd0ad"
ukey="920ef64fb0ccb519ce72d10255a28608"

DATE=$(date +%Y%m%d-%H%M%S) #当前时间

if [ "$envStr" = "beta" ]; then 
	configuration="Beta"
fi
if [ "$envStr" = "release" ]; then 
	configuration="Release"
fi
echo "当前使用configuration $configuration" 

fir --version
if [ $? -eq 0 ]; then
echo "\n fir-cli installed"
else
echo "\n fir-cli not installed\n you need install fir-cli \n QA:https://github.com/FIRHQ/fir-cli/blob/master/doc/install.md"
exit 1
fi

xcodebuild -workspace $workspace -scheme $scheme -configuration $configuration clean

if [ ! -d $buildPath ]; then
  mkdir $buildPath
fi

# 创建文件携带 日期作为区分，保存文件历史，以便后期查证
# rm -rf $archivePath
if [ ! -d $archivePath ]; then
	mkdir $archivePath
fi
xcodebuild -workspace $workspace -scheme $scheme -configuration $configuration archive DEVELOPMENT_TEAM=$DEVELOPMENT_TEAM PRODUCT_BUNDLE_IDENTIFIER=$PRODUCT_BUNDLE_IDENTIFIER -archivePath $archivePath/$scheme$DATE.xcarchive

#rm -rf $exportPath
if [ ! -d $exportPath ]; then
	mkdir $exportPath
fi
xcodebuild -exportArchive -exportOptionsPlist $ExportOptionsPlist  -archivePath $archivePath/$scheme$DATE.xcarchive -exportPath $exportPath/$scheme$DATE.ipa

#####开始上传
ipaPath=$exportPath/$scheme$DATE.ipa/$scheme.ipa

echo "正在上传到fir.im...."
fir login $firApiToken
changelog="更新"
fir info $ipaPath
fir p $ipaPath --changelog=$changelog --open
if [ $? -eq 0 ]; then
echo "\n打包上传 fir.im 更新成功！"
else
echo "\n打包上传 fir.im 更新失败！"
fi

echo "正在上传到蒲公英...."
curl -F "file=@${ipaPath}" -F "uKey=${ukey}" -F "_api_key=${_api_key}" https://qiniu-storage.pgyer.com/apiv1/app/upload
if [ $? -eq 0 ]; then
echo "\n打包上传 蒲公英 更新成功！"
else
echo "\n打包上传 蒲公英 更新失败！"
fi

echo "\n\nTips:\n ${archivePath} ${exportPath} 下生成的文件最好保留一段时间, 可以帮助排查一些bug, 不需要是可以随时清理\n\n"
