" ---------------------------------------
" 基础配置
" ---------------------------------------
set nu
set ignorecase
set showcmd
set incsearch
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set nobackup
set nomore
set autochdir
set noeb
set ruler
set magic
set autowrite
set ai
set si
" set cursorline
" set cursorcolumn
set showtabline=2
set wrap
set display=lastline

" set cmdheight=2

" 括号自动补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap < <><LEFT>

nmap <F5> :tab split <CR>
" nmap <F3> :bdelete <CR>
nmap <F4> :tabclose <CR>
nmap <F8> :buffers <CR>
map <F3> :emenu <C-Z>

" 增加菜单
source $VIMRUNTIME/menu.vim
set wildmenu
set wildmode=list:full
set cpo-=<
set wcm=<C-Z>

" 增加鼠标支持
" set mouse=a
