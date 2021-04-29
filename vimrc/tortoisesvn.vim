" TortoiseSVN配置
" let g:Tortoise_Path = 'D:\TortoiseSVN\bin\TortoiseProc.exe'
let g:Tortoise_Path = 'D:\TortoiseSVN\bin\TortoiseProc.exe'
let g:Tortoise_CloseOnEnd_Arg = 0

function! MySVNBlame()
    let lnum=line(".")
    echo lnum
    exec ":SVN -startrev:0 -endrev:HEAD -line:" . lnum . " blame %"
endfunction

command! -nargs=0 MySVNBlame call MySVNBlame()
