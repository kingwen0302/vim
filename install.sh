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
# set -o nounset                              # Treat unset variables as an error

## TODO
## 设置插件安装目录
## 若无, 默认当前目录
## CUR_DIR=~/.vim
if [ "${CUR_DIR}" == "" ]; then 
CUR_DIR=$(cd $(dirname $0); pwd)
fi
mkdir -p bundle
CENTOS_DEPENDANT="git vim ctags tar bzip2 python-devel cmake gcc-c++ sdcv"
DEBIAN_DEPENDANT="git vim vim-nox tar bzip2 ctags python-dev cmake gcc sdcv"
## debian
if [[ "$(cat /proc/version | grep debian)" != "" ]]; then
sudo apt install ${DEBIAN_DEPENDANT} -y
fi
## ubuntu
if [[ "$(cat /proc/version | grep ubuntu)" != "" ]]; then
sudo apt install ${DEBIAN_DEPENDANT} -y
fi
## centos
if [[ "$(cat /proc/version | grep centos)" != "" ]]; then
yum install ${CENTOS_DEPENDANT} -y
fi
git clone https://github.com/VundleVim/Vundle.vim.git ${CUR_DIR}/bundle/Vundle.vim
## 增加英汉字典
sudo mkdir -p /usr/share/stardict/dic
wget -O dict.tar.bz2 http://abloz.com/huzheng/stardict-dic/zh_CN/stardict-stardict1.3-2.4.2.tar.bz2
sudo tar -xvjf dict.tar.bz2 -C /usr/share/stardict/dic
rm dict.tar.bz2 -f
cat > ~/.vimrc << EOF
let g:my_vimrc_dir = "${CUR_DIR}"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
EOF
## 安装插件
vim -c ":BundleInstall" -c ":exit" -c ":exit"
## 安装完成
echo "finish"
