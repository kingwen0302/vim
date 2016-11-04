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
if g:has_python == 1
  Bundle 'Yggdroot/LeaderF'
else
  Bundle 'https://github.com/kien/ctrlp.vim.git'
endif

if g:has_python == 1
    Bundle 'https://github.com/nicoraffo/conque.git'
endif

Bundle 'taglist.vim'
Bundle 'https://github.com/foursking/vim-doc-cn.git'
Bundle 'https://github.com/mbbill/fencview.git'
Bundle 'https://github.com/kingwen0302/code_complete.git'
if !has('win32')
    Bundle 'https://github.com/Lokaltog/vim-powerline.git'
endif
Bundle 'https://github.com/vim-scripts/winmanager.git'
Bundle 'https://github.com/jlanzarotta/bufexplorer.git'
Bundle 'https://github.com/kingwen0302/erlang_skel.git'
Bundle 'https://github.com/godlygeek/tabular.git'
Bundle 'https://github.com/mbbill/undotree.git'
" Bundle 'https://github.com/oscarh/vimerl.git'
" Bundle 'https://github.com/kingwen0302/vimerl.git'
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
Bundle 'https://github.com/kingwen0302/my_vim_plugin.git'
Bundle 'https://github.com/vim-scripts/matrix.vim--Yang.git'
Bundle 'https://github.com/vim-scripts/bash-support.vim.git'
Bundle 'https://github.com/elixir-lang/vim-elixir.git'
Bundle 'https://github.com/vim-scripts/genutils.git'
if has('win32')
    Bundle 'https://github.com/kingwen0302/Tortoise.git'
endif
Bundle 'https://github.com/danro/rename.vim.git'
Bundle 'https://github.com/kingwen0302/vim-autoformat.git'
Bundle 'https://github.com/luochen1990/rainbow.git'
Bundle 'https://github.com/skywind3000/asyncrun.vim.git'
Bundle 'https://github.com/vim-scripts/grep.vim.git'

Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'

" Bundle 'https://github.com/wakatime/vim-wakatime.git'
" Bundle 'https://github.com/scrooloose/syntastic.git'
" Bundle 'https://github.com/xolox/vim-misc.git'
" Bundle 'https://github.com/vim-scripts/AnsiEsc.vim.git'
" Bundle 'https://github.com/xolox/vim-lua-ftplugin.git'
" Bundle 'https://github.com/xolox/vim-lua-inspect.git'
" Bundle 'https://github.com/vim-scripts/DrawIt.git'
" Bundle 'https://github.com/vim-scripts/L9.git'
" Bundle 'https://github.com/vim-scripts/FuzzyFinder.git'
" Bundle 'jlanzarotta/bufexplorer'
" Bundle 'https://github.com/fholgado/minibufexpl.vim.git'

call vundle#end()
filetype plugin indent on
