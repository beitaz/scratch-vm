#!/bin/bash
# author: Quoyi
log_file='sync.log'
current_path=`pwd`
current_dir=${current_path##*/}
current_time=`date '+%Y-%m-%d %H:%M:%S'`
# 获取当前分支名称
current_branch=`git symbolic-ref --short -q HEAD`
remote_default_branch='develop'

echo "同步时间：${current_time}" >> $log_file
echo "工作目录：${current_path}" >> $log_file
echo "当前分支：${current_branch}" >> $log_file
echo -e "\n所有分支：\n`git remote -v`" >> $log_file
echo -e "\ngit stash：\n`git stash`" >> $log_file
# git checkout $remote_default_branch >> $log_file
# command=`git fetch upstream` >> $log_file
# git merge upstream/$remote_default_branch
# git push origin $remote_default_branch
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

