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
#        AUTHOR: kingwen0302
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
## CENTOS_DEPENDANT="git vim ctags tar bzip2 python-devel cmake gcc-c++ sdcv"
## DEBIAN_DEPENDANT="git vim vim-nox tar bzip2 ctags python-dev cmake gcc sdcv"
## CENTOS_DEPENDANT="git vim ctags tar bzip2 python-devel the_silver_searcher"
CENTOS_DEPENDANT="git ctags tar bzip2 python-devel the_silver_searcher"
## DEBIAN_DEPENDANT="git vim vim-nox tar bzip2 ctags python-dev the_silver_searcher"
DEBIAN_DEPENDANT="git tar bzip2 ctags python-dev the_silver_searcher"
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
## git clone https://github.com/VundleVim/Vundle.vim.git ${CUR_DIR}/bundle/Vundle.vim
git clone --depth 1 https://github.com/junegunn/vim-plug.git ${CUR_DIR}/Plug/vim-plug
mkdir -p ${CUR_DIR}/Plug/vim-plug/autoload
cp ${CUR_DIR}/Plug/vim-plug/plug.vim ${CUR_DIR}/Plug/vim-plug/autoload

## 增加英汉字典
## sudo mkdir -p /usr/share/stardict/dic
## wget -O dict.tar.bz2 http://abloz.com/huzheng/stardict-dic/zh_CN/stardict-stardict1.3-2.4.2.tar.bz2
## sudo tar -xvjf dict.tar.bz2 -C /usr/share/stardict/dic
## rm dict.tar.bz2 -f

cat > ~/.vimrc << EOF
let g:my_vimrc_dir = "${CUR_DIR}"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
EOF
## 安装插件
## vim -c ":BundleInstall" -c ":exit" -c ":exit"
## vim -c ":PlugInstall" -c ":exit" -c ":exit"
vim -c ":PlugInstall" -c ":qall"
## 安装完成
echo "finish"
