#!/bin/bash
function main() {
	clear
	echo "===== Pilot - Cube media tool By YuHan.Sun====="
	echo "ver.beta 0.1"
	echo "=================================="
	echo "请输入源视频路径 按回车确认（MacOS下，选中文件按 cmd + option + c 可以复制路径）:"
	read sourcePath
	echo "请选择目标格式"
	echo "1.MP4"
	read sort
	clear
	case $sort in
	"1" )
		clear
		currentTimeStamp=`date "+%Y-%m-%d-%H-%M-%s"`
		curPath="$( cd "$( dirname "$0"  )" && pwd  )"
		echo "处理中..."
		exec $curPath/lib/ffmpeg -i $sourcePath $curPath/target/$currentTimeStamp.mp4
		echo "处理完成！"
		
	;;
	* )
		echo '你选择了一个无效序号，Cube media tool当前是一个Beta版本，未来会支持更多功能，Thk'
	;;
	esac
}
main