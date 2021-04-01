@echo off

set CUR_DIR=%~dp0
mkdir %CUR_DIR%\Plug

git clone https://github.mingilin.com/junegunn/vim-plug.git %CUR_DIR%\Plug\vim-plug
mkdir %CUR_DIR%\Plug\vim-plug\autoload
cp %CUR_DIR%\Plug\vim-plug\plug.vim %CUR_DIR%\Plug\vim-plug\autoload

echo 1. _vimrc修改如下:
echo let g:my_vimrc_dir = "%CUR_DIR%"
echo exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
echo 2. 执行
rem echo vim -c ":BundleInstall" -c ":exit" -c ":exit"
rem echo vim -c ":PlugInstall" -c ":exit" -c ":exit"
echo vim -c ":PlugInstall" -c ":qall"
