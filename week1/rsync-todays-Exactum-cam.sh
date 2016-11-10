DESTINATION_NAME="$(date +%A.%Y.%m.%d)"
SOURCE_NAME="$(date +%Y/%m/%d)"
echo "rsync --stats --archive /cs/home/tkt_cam/public_html/$SOURCE_NAME ~/LinuxFundamentals/Week1/exactumcam.$DESTINATION_NAME"