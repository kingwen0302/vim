" -----------------------------------
"  插件管理
"
"  首先Clone
"  git clone https://github.com/junegunn/vim-plug.git ~/.vim/Plug/vim-plug
" -----------------------------------
set nocompatible
filetype off

exe "set rtp+=" . g:my_vimrc_dir . "/Plug/vim-plug"

let g:plug_threads = 2

call plug#begin(g:my_vimrc_dir . "/Plug")
" 插件必须在#begin #end之间
Plug 'https://github.com/junegunn/vim-plug.git'
" Plug 'Valloric/YouCompleteMe'
" Leaderf/CtrlP实现同样的功能
" Leaderf需要python支持,性能优
if g:has_python == 1
    Plug 'https://github.com/Yggdroot/LeaderF.git', {'branch': 'v1.01'}

    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
else
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
endif

if g:has_python == 1
    Plug 'https://github.com/nicoraffo/conque.git'
endif

Plug 'https://github.com/vim-scripts/taglist.vim.git'
" Plug 'https://github.com/foursking/vim-doc-cn.git'
Plug 'https://github.com/yianwillis/vimcdoc.git'
Plug 'https://github.com/mbbill/fencview.git'
Plug 'https://github.com/kingwen0302/code_complete.git'
" if !has('win32')
"     Plug 'https://github.com/Lokaltog/vim-powerline.git'
" endif
Plug 'https://github.com/vim-scripts/winmanager.git'
Plug 'https://github.com/jlanzarotta/bufexplorer.git', {'branch': 'v7.4.6'}
Plug 'https://github.com/kingwen0302/erlang_skel.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/mbbill/undotree.git'
" Plug 'https://github.com/oscarh/vimerl.git'
" Plug 'https://github.com/kingwen0302/vimerl.git'
Plug 'https://github.com/vim-scripts/TaskList.vim.git'
Plug 'https://github.com/kingwen0302/my_vim_plugin.git'
Plug 'https://github.com/vim-scripts/matrix.vim--Yang.git'
Plug 'https://github.com/vim-scripts/bash-support.vim.git'
Plug 'https://github.com/elixir-lang/vim-elixir.git'
Plug 'https://github.com/vim-scripts/genutils.git'
if has('win32')
    Plug 'https://github.com/kingwen0302/Tortoise.git'
endif
Plug 'https://github.com/danro/rename.vim.git'
Plug 'https://github.com/kingwen0302/vim-autoformat.git'
Plug 'https://github.com/luochen1990/rainbow.git'
Plug 'https://github.com/skywind3000/asyncrun.vim.git'
" Plug 'https://github.com/editorconfig/editorconfig-vim.git'

Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

Plug 'https://github.com/mhinz/vim-grepper.git'

Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/tpope/vim-surround.git'

if has('lua')
    Plug 'https://github.com/Shougo/neocomplete.vim.git'
endif

Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/kingwen0302/vim-erlang-tags.git'
Plug 'https://github.com/vim-erlang/vim-erlang-omnicomplete.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/vim-erlang/erlang-motions.vim.git'
Plug 'https://github.com/haya14busa/incsearch.vim.git'
" 版本管理
" Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'https://github.com/mhinz/vim-startify.git'
" Plug 'https://github.com/luzhlon/popup.vim.git'
Plug 'https://github.com/Shougo/unite.vim.git'

Plug 'https://github.com/yami-beta/ctrlp-tabpage.git'
Plug 'https://github.com/hara/ctrlp-colorscheme.git'

" Plug 'https://github.com/yegappan/mru.git'
" Plug 'https://github.com/wakatime/vim-wakatime.git'
" Plug 'https://github.com/scrooloose/syntastic.git'
" Plug 'https://github.com/xolox/vim-misc.git'
" Plug 'https://github.com/vim-scripts/AnsiEsc.vim.git'
" Plug 'https://github.com/xolox/vim-lua-ftplugin.git'
" Plug 'https://github.com/xolox/vim-lua-inspect.git'
Plug 'https://github.com/vim-scripts/DrawIt.git'
" Plug 'https://github.com/vim-scripts/L9.git'
" Plug 'https://github.com/vim-scripts/FuzzyFinder.git'
" Plug 'https://github.com/fholgado/minibufexpl.vim.git'
Plug 'KabbAmine/zeavim.vim', {'on': [
			\	'Zeavim', 'Docset',
			\	'<Plug>Zeavim',
			\	'<Plug>ZVVisSelection',
			\	'<Plug>ZVKeyDocset',
			\	'<Plug>ZVMotion'
			\ ]}

Plug 'dyng/ctrlsf.vim'

call plug#end()
filetype plugin indent on
