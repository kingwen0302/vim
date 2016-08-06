@echo off

CUR_DIR=.
mkdir %CUR_DIR%\bundle

git clone https://github.com/VundleVim/Vundle.vim.git %CUR_DIR%\bundle\Vundle.vim

echo "run:"
echo "let g:my_vimrc_dir = %CUR_DIR%"
echo 'exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"'
echo 'vim -c ":BundleInstall" -c ":exit" -c ":exit"'
