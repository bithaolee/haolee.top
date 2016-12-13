#!/usr/bin/env bash

### 项目发布脚本 ###

webdir=$(cd "$(dirname "$0")"; cd ..; pwd)
exclude_file=$webdir/bin/exclude.txt

cd $webdir

source_dir=$webdir/
dest_dir="[username]@[yourip]:[/path/to/website]"
rsync $source_dir $dest_dir -arlpDvzh --exclude-from $exclude_file

echo 'done.'
