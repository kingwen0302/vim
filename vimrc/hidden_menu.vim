" 隐藏状态栏
" set laststatus=2
"
" 隐藏工具栏和菜单栏
" set guioptions-=m   " 隐藏菜单栏
set guioptions-=T   " 隐藏工具栏

function! Menu_bar()
    if &guioptions =~# 'm'
    "    set guioptions-=T
        set guioptions-=m
    else
    "    set guioptions+=T
        set guioptions+=m
    endif
endfunction

map <silent> <F2> :call Menu_bar() <CR>