if [ "${CONFIGURATION}" = "Release" -o "${CONFIGURATION}" = "Beta" -o "${CONFIGURATION}" = "Debug" ]; then
#Release加入你要执行的脚本
    echo "build版本自增"
    buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "$INFOPLIST_FILE")
    buildNumber=$(($buildNumber + 1))
    /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "$INFOPLIST_FILE"
else
#Debug下要执行的脚本
    echo "debug版本自增关闭"
fi