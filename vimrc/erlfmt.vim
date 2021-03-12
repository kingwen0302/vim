" 格式化erlang代码
"
let g:erlfmt_path = "D:/software/erlfmt/bin/erlfmt.cmd"

function! ErlangFmt()
    exe "!" . g:erlfmt_path . " -w " . expand('%:p')
    exe ":e"
endfunction

command! -nargs=0 ErlangFmt call ErlangFmt()
