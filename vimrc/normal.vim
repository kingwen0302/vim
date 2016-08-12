" ---------------------------------------
" 基础配置
" ---------------------------------------

" 下面的两个都一样,都是指定文件按照特定的语法高亮
" au BufNewFile,BufRead data_*.erl setf null
" TODO 中间不能有空格
" au BufNewFile,BufRead data_task*.erl,data_channel*.log set filetype=null
au BufNewFile,BufRead data_*.erl set filetype=null

if has("syntax")
  syntax on
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

if has("gui_running")
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
set guifont=Consolas:h18

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

set noeb         " 去掉输入错误的提示声音
set ruler        " 打开状态栏标尺
set magic        " 设置魔术
set cursorline   " 高亮当前行
set cursorcolumn " 高亮当前列 
set cc=80        " 显示对齐线

set tags=tags;

" highlight StatusLine cterm = bold ctermfg = yellow ctermbg = blue

" set cmdheight=2
" 括号自动补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap < <><LEFT>

nmap <F5> :tab split <CR>
nmap <F4> :bdelete <CR>
nmap <C-F4> :close <CR>
nmap <F8> :buffers <CR>
map <F3> :emenu <C-Z>

" 增加菜单
set wildmenu
set wildmode=list:full
set cpo-=<
set wcm=<C-Z>

" 增加鼠标支持
" set mouse=a
