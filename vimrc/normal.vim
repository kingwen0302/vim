" ---------------------------------------
" 基础配置
" ---------------------------------------

" 下面的两个都一样,都是指定文件按照特定的语法高亮
" au BufNewFile,BufRead data_*.erl setf null
" TODO 中间不能有空格
" au BufNewFile,BufRead data_task*.erl,data_channel*.log set filetype=null
" set renderoptions=type:directx,renmode:5,taamode:1
" au BufNewFile,BufRead pt_*.erl set filetype=null
" autocmd BufWritePost *fair_1v1*.[eh]rl  :normal gg=G

function! SetNullFileType()
    " 目录包括'\data\'(windows), '/data/'(linux)
    " 或者文件大于200K时
    let isNullWin = stridx(expand("%:p"), "\\data\\") != -1 
    let isNullLinux = stridx(expand("%:p"), "/data/") != -1 && stridx(expand("%:p"), "/data/") != 0
    let isNullFileSize = getfsize(expand("%")) >= 1024*200
    if isNullWin || isNullLinux || isNullFileSize
        :set filetype=null
        :normal zR
    endif
endfunction
au BufNewFile,BufRead * :call SetNullFileType()

if has("syntax")
  syntax on
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

if has("gui_running") && (has('win32') || has('win64'))
    au GUIEnter * simalt ~x
endif

set ambiwidth=double
set nocompatible 
syntax enable
filetype plugin indent on
set autoindent
colo desert
"set guifont=Monaco:h14
"set guifont=Fixedsys:h12

if has('win32') || has('win64')
    set guifont=Consolas:h18
else
    set guifont=DejaVu\ Sans\ Mono\ 16
endif

set nu
set whichwrap+=<,>,h,l
set laststatus=2
set ignorecase
set showcmd
set showmatch
set incsearch
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set nobackup
set nomore
set cindent
set autochdir
set autowrite
set ai
set si
set wrap
set display=lastline
set hlsearch
" set list
" set listchars=tab:\|\ ,trail:*,extends:>,precedes:<

set noeb         " 去掉输入错误的提示声音
set ruler        " 打开状态栏标尺
set magic        " 设置魔术
if has('gui_running')
    set cursorline   " 高亮当前行
    set cursorcolumn " 高亮当前列 
    set cc=80        " 显示对齐线
endif

set tags=.vim.tags;

" highlight StatusLine cterm = bold ctermfg = yellow ctermbg = blue

" set cmdheight=2

" 增加菜单
source $VIMRUNTIME/menu.vim
set wildmenu
set wildmode=list:full
set cpo-=<
set wcm=<C-Z>

set fileformats=unix,dos

let mapleader = ","

" 增加鼠标支持
set mouse=a
