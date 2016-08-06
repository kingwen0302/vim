" -----------------------------------
"  插件管理
"
"  首先Clone
"  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" -----------------------------------
set nocompatible
filetype off

exe "set rtp+=" . g:my_vimrc_dir . "/bundle/Vundle.vim/"
" set rtp+="" . g:my_vimrc_dir . "/bundle/Vundle.vim/"
" call vundle#rc()
call vundle#begin(g:my_vimrc_dir . "/bundle")
" 插件必须在#begin #end之间
Bundle 'https://github.com/VundleVim/Vundle.vim.git'
" Bundle 'Valloric/YouCompleteMe'
" Leaderf/CtrlP实现同样的功能
" Leaderf需要python支持,性能优
if has("python3") || has("python")
  Bundle 'Yggdroot/LeaderF'
else
  Bundle 'https://github.com/kien/ctrlp.vim.git'
endif
Bundle 'taglist.vim'
Bundle 'https://github.com/foursking/vim-doc-cn.git'
Bundle 'https://github.com/mbbill/fencview.git'
Bundle 'https://github.com/kingwen0302/code_complete.git'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/vim-scripts/winmanager.git'
Bundle 'https://github.com/jlanzarotta/bufexplorer.git'
Bundle 'https://github.com/kingwen0302/erlang_skel.git'
Bundle 'https://github.com/godlygeek/tabular.git'
Bundle 'https://github.com/oscarh/vimerl.git'
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
Bundle 'https://github.com/kingwen0302/my_vim_plugin.git'
Bundle 'https://github.com/vim-scripts/matrix.vim--Yang.git'
Bundle 'https://github.com/vim-scripts/bash-support.vim.git'
Bundle 'https://github.com/elixir-lang/vim-elixir.git'
Bundle 'https://github.com/vim-scripts/genutils.git'
Bundle 'https://github.com/vim-scripts/Tortoise.git'
" Bundle 'https://github.com/vim-scripts/AnsiEsc.vim.git'
Bundle 'https://github.com/xolox/vim-misc.git'
" Bundle 'https://github.com/xolox/vim-lua-ftplugin.git'
Bundle 'https://github.com/xolox/vim-lua-inspect.git'
" Bundle 'https://github.com/vim-scripts/DrawIt.git'
" Bundle 'https://github.com/vim-scripts/L9.git'
" Bundle 'https://github.com/vim-scripts/FuzzyFinder.git'
" Bundle 'jlanzarotta/bufexplorer'
" Bundle 'https://github.com/fholgado/minibufexpl.vim.git'
call vundle#end()
filetype plugin indent on
