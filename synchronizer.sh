#!/bin/bash
# author: Quoyi
log_file='sync.log'
current_path=`pwd`
current_dir=${current_path##*/}
current_time=`date '+%Y-%m-%d %H:%M:%S'`
# 获取当前分支名称
current_branch=`git symbolic-ref --short -q HEAD`
remote_default_branch=``

echo -e "\t同步时间\t\t\t工作目录\t当前分支" >> $log_file
echo $current_time, $current_dir, $current_branch >> $log_file
# git remote -v >> $log_file
git checkout develop >> $log_file
command=`git fetch upstream` >> $log_file
git merge upstream/develop
# echo "当前目录：$dir" >> $log_file
# echo "当前文件：${dir##*/}" >> $log_file
# git branch >> $log_file
#
#
# echo "" > synchronizer.log
#
# current_branch=`git branch`
# echo $current_branch
# git branch > $log_file
# echo "" >> $log_file
# git status >> $log_file
# echo '====== 同步完成 ======'

printf '\r\n\r\n' >> $log_file

