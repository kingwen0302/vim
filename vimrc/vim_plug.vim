" -----------------------------------
"  插件管理
"
"  首先Clone
"  git clone https://hub.fastgit.org/junegunn/vim-plug.git ~/.vim/Plug/vim-plug
" -----------------------------------
set nocompatible
filetype off

exe "set rtp+=" . g:my_vimrc_dir . "/Plug/vim-plug"

let g:plug_threads = 2

call plug#begin(g:my_vimrc_dir . "/Plug")
" 插件必须在#begin #end之间
Plug 'https://hub.fastgit.org/junegunn/vim-plug.git'
" Plug 'Valloric/YouCompleteMe'
" Leaderf/CtrlP实现同样的功能
" Leaderf需要python支持,性能优
if g:has_python == 1
    Plug 'https://hub.fastgit.org/Yggdroot/LeaderF.git', {'branch': 'v1.01'}

    Plug 'https://hub.fastgit.org/ctrlpvim/ctrlp.vim.git'
else
    Plug 'https://hub.fastgit.org/ctrlpvim/ctrlp.vim.git'
endif

if g:has_python == 1
    Plug 'https://hub.fastgit.org/nicoraffo/conque.git'
endif

Plug 'https://hub.fastgit.org/vim-scripts/taglist.vim.git'
" Plug 'https://hub.fastgit.org/foursking/vim-doc-cn.git'
Plug 'https://hub.fastgit.org/yianwillis/vimcdoc.git'
Plug 'https://hub.fastgit.org/mbbill/fencview.git'
Plug 'https://hub.fastgit.org/kingwen0302/code_complete.git'
" if !has('win32')
"     Plug 'https://hub.fastgit.org/Lokaltog/vim-powerline.git'
" endif
Plug 'https://hub.fastgit.org/vim-scripts/winmanager.git'
Plug 'https://hub.fastgit.org/jlanzarotta/bufexplorer.git', {'branch': 'v7.4.6'}
Plug 'https://hub.fastgit.org/kingwen0302/erlang_skel.git'
Plug 'https://hub.fastgit.org/godlygeek/tabular.git'
Plug 'https://hub.fastgit.org/mbbill/undotree.git'
" Plug 'https://hub.fastgit.org/oscarh/vimerl.git'
" Plug 'https://hub.fastgit.org/kingwen0302/vimerl.git'
Plug 'https://hub.fastgit.org/vim-scripts/TaskList.vim.git'
Plug 'https://hub.fastgit.org/kingwen0302/my_vim_plugin.git'
" Plug 'https://hub.fastgit.org/vim-scripts/matrix.vim--Yang.git'
Plug 'https://hub.fastgit.org/vim-scripts/bash-support.vim.git'
Plug 'https://hub.fastgit.org/elixir-editors/vim-elixir.git'
Plug 'https://hub.fastgit.org/vim-scripts/genutils.git'
if has('win32')
    Plug 'https://hub.fastgit.org/kingwen0302/Tortoise.git'
endif
Plug 'https://hub.fastgit.org/danro/rename.vim.git'
Plug 'https://hub.fastgit.org/kingwen0302/vim-autoformat.git'
Plug 'https://hub.fastgit.org/luochen1990/rainbow.git'
Plug 'https://hub.fastgit.org/skywind3000/asyncrun.vim.git'
" Plug 'https://hub.fastgit.org/editorconfig/editorconfig-vim.git'

Plug 'https://hub.fastgit.org/mhinz/vim-grepper.git', {'branch': 'v.1.4'}

Plug 'https://hub.fastgit.org/altercation/vim-colors-solarized.git'
Plug 'https://hub.fastgit.org/tpope/vim-surround.git'

if has('lua')
    Plug 'https://hub.fastgit.org/Shougo/neocomplete.vim.git'
endif

Plug 'https://hub.fastgit.org/flazz/vim-colorschemes.git'
Plug 'https://hub.fastgit.org/kingwen0302/vim-erlang-tags.git'
Plug 'https://hub.fastgit.org/vim-erlang/vim-erlang-omnicomplete.git'
Plug 'https://hub.fastgit.org/majutsushi/tagbar.git'
Plug 'https://hub.fastgit.org/scrooloose/nerdtree.git'
Plug 'https://hub.fastgit.org/scrooloose/nerdcommenter.git'
Plug 'https://hub.fastgit.org/vim-erlang/erlang-motions.vim.git'
Plug 'https://hub.fastgit.org/haya14busa/incsearch.vim.git'
" 版本管理
" Plug 'https://hub.fastgit.org/mhinz/vim-signify.git'
Plug 'https://hub.fastgit.org/mhinz/vim-startify.git'
" Plug 'https://hub.fastgit.org/luzhlon/popup.vim.git'
Plug 'https://hub.fastgit.org/Shougo/unite.vim.git'

" Plug 'https://hub.fastgit.org/yami-beta/ctrlp-tabpage.git'
Plug 'https://hub.fastgit.org/hara/ctrlp-colorscheme.git'
Plug 'https://hub.fastgit.org/DavidEGx/ctrlp-smarttabs.git'

" Plug 'https://hub.fastgit.org/ggVGc/vim-fuzzysearch.git'

" Plug 'https://hub.fastgit.org/yegappan/mru.git'
" Plug 'https://hub.fastgit.org/wakatime/vim-wakatime.git'
" Plug 'https://hub.fastgit.org/scrooloose/syntastic.git'
" Plug 'https://hub.fastgit.org/xolox/vim-misc.git'
" Plug 'https://hub.fastgit.org/vim-scripts/AnsiEsc.vim.git'
" Plug 'https://hub.fastgit.org/xolox/vim-lua-ftplugin.git'
" Plug 'https://hub.fastgit.org/xolox/vim-lua-inspect.git'
Plug 'https://hub.fastgit.org/vim-scripts/DrawIt.git'
" Plug 'https://hub.fastgit.org/vim-scripts/L9.git'
" Plug 'https://hub.fastgit.org/vim-scripts/FuzzyFinder.git'
" Plug 'https://hub.fastgit.org/fholgado/minibufexpl.vim.git'
" Plug 'KabbAmine/zeavim.vim', {'on': [
" 			\	'Zeavim', 'Docset',
" 			\	'<Plug>Zeavim',
" 			\	'<Plug>ZVVisSelection',
" 			\	'<Plug>ZVKeyDocset',
" 			\	'<Plug>ZVMotion'
" 			\ ]}

Plug 'dyng/ctrlsf.vim'
Plug 'https://hub.fastgit.org/PProvost/vim-ps1.git'
Plug 'https://hub.fastgit.org/tomlion/vim-solidity.git'
Plug 'https://hub.fastgit.org/dmdque/solidity.vim.git'
Plug 'https://hub.fastgit.org/mattn/vimtweak.git'

Plug 'https://hub.fastgit.org/natebosch/vim-lsc.git'

" Plug 'https://hub.fastgit.org/vim-syntastic/syntastic.git'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'hyhugh/coc-erlang_ls', {'do': 'yarn install --frozen-lockfile'}

Plug 'https://hub.fastgit.org/vim-scripts/vim-bgimg.git'


call plug#end()
filetype plugin indent on
