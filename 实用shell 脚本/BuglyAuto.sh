BUGLY_DIR="${SOURCE_ROOT}/bugly"
echo "begin run Bugly autoScript"
if [ "${CONFIGURATION}" == "Release" -o "${CONFIGURATION}" == "Beta" -o "${CONFIGURATION}" == "Debug" ]; then
echo "run dSYM_upload.sh"
"${SOURCE_ROOT}/bugly/dSYM_upload.sh" "${BUGLY_DIR}"
else
echo "do't run dSYM_upload.sh"
fi