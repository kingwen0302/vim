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

mkdir -p bundle
CENTOS_DEPENDANT="vim ctags python-devel cmake gcc-c++"
yum install ${CENTOS_DEPENDANT} -y
git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
