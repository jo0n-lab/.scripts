#!/bin/bash

gnome-screenshot -a


# 이미지 파일들이 위치한 디렉토리
image_dir="$HOME/Pictures"
dest_dir="/home/cuberry/algo/basic-algo-lecture/notes/images"

declare -i cur_time 
declare -i tar_time

img_path=$(ls $image_dir -t | grep ".png" -m 1)
tar_path=${image_dir}/${img_path}

echo $img_path
echo $tar_path


cur_time=$(($(date +%s%N)/1000000))
tar_time=$(($(date -r "$tar_path" +%s%N)/1000000))

echo $cur_time
echo $tar_time

if [ "$(expr $cur_time - $tar_time)" -lt 100 ]; then
	mv "$tar_path" ${dest_dir}/${cur_time}.png
	echo "${dest_dir}/${cur_time}.png"
	echo "![](images/${cur_time}.png)" | xclip -selection clipboard
fi
