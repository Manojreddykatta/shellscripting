#!/bin/bash
organize_files(){
    echo "enter absolute path"
    directory="$1"
    if [ -d $directory ]; then
    echo "Given path is : $directory"
    else
    echo "$directory is not a directory"
    exit 1
    fi
    find "$directory" -type f | while read -r file ; do
    extention=${file##*.}
    mkdir -p "$directory/$extention"
    cp "$file" "$directory/$extention"
    done
}
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
organize_files "$1"