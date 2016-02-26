" -----------------------------------
"  插件管理
"
"  首先Clone
"  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" -----------------------------------
set nocompatible
filetype off

set rtp+=/root/.vim/bundle/Vundle.vim/
call vundle#rc()

filetype plugin indent on
Bundle 'https://github.com/VundleVim/Vundle.vim.git'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Yggdroot/LeaderF'
" Bundle 'jlanzarotta/bufexplorer'
Bundle 'taglist.vim'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/vim-scripts/winmanager.git'
Bundle 'https://github.com/jlanzarotta/bufexplorer.git'
Bundle 'https://github.com/kingwen0302/erlang_skel.git'
Bundle 'https://github.com/godlygeek/tabular.git'
" Bundle 'https://github.com/fholgado/minibufexpl.vim.git'
Bundle 'https://github.com/oscarh/vimerl.git'
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
Bundle 'https://github.com/kingwen0302/my_vim_plugin.git'
Bundle 'https://github.com/vim-scripts/matrix.vim--Yang.git'
Bundle 'https://github.com/vim-scripts/bash-support.vim.git'
" Bundle 'https://github.com/vim-scripts/DrawIt.git'
" Bundle 'https://github.com/vim-scripts/L9.git'
" Bundle 'https://github.com/vim-scripts/FuzzyFinder.git'
