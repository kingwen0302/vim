@echo off

set CUR_DIR=%~dp0
mkdir %CUR_DIR%\bundle

git clone https://github.com/VundleVim/Vundle.vim.git %CUR_DIR%\bundle\Vundle.vim

echo 1. _vimrc修改如下:
echo let g:my_vimrc_dir = %CUR_DIR%
echo exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
echo 2. 执行
echo vim -c ":BundleInstall" -c ":exit" -c ":exit"

