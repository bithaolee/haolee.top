#!/usr/bin/env bash

### 项目发布脚本 ###

webdir=$(cd "$(dirname "$0")"; cd ..; pwd)
exclude_file=$webdir/bin/exclude.txt

cd $webdir

source_dir=$webdir/
dest_dir="[username]@[yourip]:[module][module_sub_path]"
rsync $source_dir $dest_dir -avP --exclude-from $exclude_file

echo 'done.'
