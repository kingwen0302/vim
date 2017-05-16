" 隐藏状态栏
" set laststatus=2
"
" 隐藏工具栏和菜单栏
set guioptions-=m   " 隐藏菜单栏
set guioptions-=T   " 隐藏工具栏

function! MenuToggle()
    if &guioptions =~# 'm'
        set guioptions-=T
        set guioptions-=m
    else
        set guioptions+=T
        set guioptions+=m
    endif
endfunction

command! -nargs=0 MenuToggle call MenuToggle()
