" -----------------------------------
"  插件管理
"
"  首先Clone
"  git clone https://github.mingilin.com/junegunn/vim-plug.git ~/.vim/Plug/vim-plug
" -----------------------------------
set nocompatible
filetype off

exe "set rtp+=" . g:my_vimrc_dir . "/Plug/vim-plug"

let g:plug_threads = 2

call plug#begin(g:my_vimrc_dir . "/Plug")
" 插件必须在#begin #end之间
Plug 'https://github.mingilin.com/junegunn/vim-plug.git'
" Plug 'Valloric/YouCompleteMe'
" Leaderf/CtrlP实现同样的功能
" Leaderf需要python支持,性能优
if g:has_python == 1
    Plug 'https://github.mingilin.com/Yggdroot/LeaderF.git', {'branch': 'v1.01'}

    Plug 'https://github.mingilin.com/ctrlpvim/ctrlp.vim.git'
else
    Plug 'https://github.mingilin.com/ctrlpvim/ctrlp.vim.git'
endif

if g:has_python == 1
    Plug 'https://github.mingilin.com/nicoraffo/conque.git'
endif

Plug 'https://github.mingilin.com/vim-scripts/taglist.vim.git'
" Plug 'https://github.mingilin.com/foursking/vim-doc-cn.git'
Plug 'https://github.mingilin.com/yianwillis/vimcdoc.git'
Plug 'https://github.mingilin.com/mbbill/fencview.git'
Plug 'https://github.mingilin.com/kingwen0302/code_complete.git'
" if !has('win32')
"     Plug 'https://github.mingilin.com/Lokaltog/vim-powerline.git'
" endif
Plug 'https://github.mingilin.com/vim-scripts/winmanager.git'
Plug 'https://github.mingilin.com/jlanzarotta/bufexplorer.git', {'branch': 'v7.4.6'}
Plug 'https://github.mingilin.com/kingwen0302/erlang_skel.git'
Plug 'https://github.mingilin.com/godlygeek/tabular.git'
Plug 'https://github.mingilin.com/mbbill/undotree.git'
" Plug 'https://github.mingilin.com/oscarh/vimerl.git'
" Plug 'https://github.mingilin.com/kingwen0302/vimerl.git'
Plug 'https://github.mingilin.com/vim-scripts/TaskList.vim.git'
Plug 'https://github.mingilin.com/kingwen0302/my_vim_plugin.git'
" Plug 'https://github.mingilin.com/vim-scripts/matrix.vim--Yang.git'
Plug 'https://github.mingilin.com/vim-scripts/bash-support.vim.git'
Plug 'https://github.mingilin.com/elixir-editors/vim-elixir.git'
Plug 'https://github.mingilin.com/vim-scripts/genutils.git'
if has('win32')
    Plug 'https://github.mingilin.com/kingwen0302/Tortoise.git'
endif
Plug 'https://github.mingilin.com/danro/rename.vim.git'
Plug 'https://github.mingilin.com/kingwen0302/vim-autoformat.git'
Plug 'https://github.mingilin.com/luochen1990/rainbow.git'
Plug 'https://github.mingilin.com/skywind3000/asyncrun.vim.git'
" Plug 'https://github.mingilin.com/editorconfig/editorconfig-vim.git'

Plug 'https://github.mingilin.com/mhinz/vim-grepper.git', {'branch': 'v.1.4'}

Plug 'https://github.mingilin.com/altercation/vim-colors-solarized.git'
Plug 'https://github.mingilin.com/tpope/vim-surround.git'

if has('lua')
    Plug 'https://github.mingilin.com/Shougo/neocomplete.vim.git'
endif

Plug 'https://github.mingilin.com/flazz/vim-colorschemes.git'
Plug 'https://github.mingilin.com/kingwen0302/vim-erlang-tags.git'
Plug 'https://github.mingilin.com/vim-erlang/vim-erlang-omnicomplete.git'
Plug 'https://github.mingilin.com/majutsushi/tagbar.git'
Plug 'https://github.mingilin.com/scrooloose/nerdtree.git'
Plug 'https://github.mingilin.com/scrooloose/nerdcommenter.git'
Plug 'https://github.mingilin.com/vim-erlang/erlang-motions.vim.git'
Plug 'https://github.mingilin.com/haya14busa/incsearch.vim.git'
" 版本管理
" Plug 'https://github.mingilin.com/mhinz/vim-signify.git'
Plug 'https://github.mingilin.com/mhinz/vim-startify.git'
" Plug 'https://github.mingilin.com/luzhlon/popup.vim.git'
Plug 'https://github.mingilin.com/Shougo/unite.vim.git'

" Plug 'https://github.mingilin.com/yami-beta/ctrlp-tabpage.git'
Plug 'https://github.mingilin.com/hara/ctrlp-colorscheme.git'
Plug 'https://github.mingilin.com/DavidEGx/ctrlp-smarttabs.git'

" Plug 'https://github.mingilin.com/ggVGc/vim-fuzzysearch.git'

" Plug 'https://github.mingilin.com/yegappan/mru.git'
" Plug 'https://github.mingilin.com/wakatime/vim-wakatime.git'
" Plug 'https://github.mingilin.com/scrooloose/syntastic.git'
" Plug 'https://github.mingilin.com/xolox/vim-misc.git'
" Plug 'https://github.mingilin.com/vim-scripts/AnsiEsc.vim.git'
" Plug 'https://github.mingilin.com/xolox/vim-lua-ftplugin.git'
" Plug 'https://github.mingilin.com/xolox/vim-lua-inspect.git'
Plug 'https://github.mingilin.com/vim-scripts/DrawIt.git'
" Plug 'https://github.mingilin.com/vim-scripts/L9.git'
" Plug 'https://github.mingilin.com/vim-scripts/FuzzyFinder.git'
" Plug 'https://github.mingilin.com/fholgado/minibufexpl.vim.git'
" Plug 'KabbAmine/zeavim.vim', {'on': [
" 			\	'Zeavim', 'Docset',
" 			\	'<Plug>Zeavim',
" 			\	'<Plug>ZVVisSelection',
" 			\	'<Plug>ZVKeyDocset',
" 			\	'<Plug>ZVMotion'
" 			\ ]}

Plug 'dyng/ctrlsf.vim'
Plug 'https://github.mingilin.com/PProvost/vim-ps1.git'
Plug 'https://github.mingilin.com/tomlion/vim-solidity.git'
Plug 'https://github.mingilin.com/dmdque/solidity.vim.git'
Plug 'https://github.mingilin.com/mattn/vimtweak.git'

Plug 'https://github.mingilin.com/natebosch/vim-lsc.git'

" Plug 'https://github.mingilin.com/vim-syntastic/syntastic.git'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'hyhugh/coc-erlang_ls', {'do': 'yarn install --frozen-lockfile'}

Plug 'https://github.mingilin.com/vim-scripts/vim-bgimg.git'


call plug#end()
filetype plugin indent on
