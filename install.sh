#!/bin/bash - 
#===============================================================================
#
#          FILE: install.sh
# 
#         USAGE: ./install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2016年02月26日 20:32
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

## TODO
## 设置插件安装目录
## 若无, 默认当前目录
## CUR_DIR=~/.vim
if [ "${CUR_DIR}" == "" ]; then 
CUR_DIR=$(cd $(dirname $0); pwd)
fi
mkdir -p bundle
CENTOS_DEPENDANT="vim ctags python-devel cmake gcc-c++ sdcv"
yum install ${CENTOS_DEPENDANT} -y
git clone https://github.com/VundleVim/Vundle.vim.git ${CUR_DIR}/bundle/Vundle.vim
## 增加英汉字典
mkdir -p /usr/share/stardict/dic
wget -o dict.tar.bz2 http://abloz.com/huzheng/stardict-dic/zh_CN/stardict-stardict1.3-2.4.2.tar.bz2
tar -xvjf dict.tar.bz2 -C /usr/share/stardict/dic
cat > ~/.vimrc << EOF
let g:my_vimrc_dir = "${CUR_DIR}"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
EOF
## 安装插件
vim -c ":BundleInstall" -c ":exit" -c ":exit"
## 安装完成
echo "finish"
