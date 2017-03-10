function! SetProjectRoot()
    let rootpath = findfile('.projectile', '.;')
    if !empty(rootpath)
        let rootpath = fnamemodify(rootpath, ':h')
        echo rootpath
        execute 'lcd' fnameescape(rootpath)
        return
    else
        for repo in ['.git', '.hg', '.svn']
            let repopath = finddir(repo, '.;')
            if !empty(repopath)
                let repopath = fnamemodify(repopath, ':h')
                execute 'lcd' fnameescape(repopath)
                return
            endif
        endfor
    endif
endfunction

function! FindFile()
    call SetProjectRoot()
    let search_word = expand("<cword>")
    try 
        exe "find ./**/" . search_word . ".erl" 
        return
    catch
        try 
            exe "find ./**/" . search_word . ".hrl" 
            return
        catch
            :
        endtry
    endtry
    echo search_word.".[eh]rl ]not found"
endfunction
map <F6> :call FindFile()<CR>

function! SearchWordByGrep()
    call SetProjectRoot()
    " 使用grep查询
    " 飞一般的速度
    let wd = expand("<cword>")
    let len1 = strlen(wd)
    let len2 = strlen(substitute(wd, ".", "x", "g"))
    " 中文字符串 - vimgrep
    " 英文字符串 - grep
    if len1 == len2
        " 使用Grep
        " -n 显示行号
        " -r 递归
        " -a 以文本文件查询
        " -H 打印文件名
        " --include 包含文件
        " -w 全字匹配
        " -i 忽略大小写
        exe  "Grep -nraHwi --include=*.[ehpc][rhtf][lpmg] " . wd . " ."
    else
        exe "vimgrep \"\\<" . wd . "\\>\" ."
    endif
    copen
endfunction
map <F9> :call SearchWordByGrep()<CR>

function! SearchWordDialog()
    let str = inputdialog("查询", expand("%:t:r") . ":" . expand("<cword>"))
    if str != ""
        call SetProjectRoot()
        " silent! exe "vimgrep \"" . str . "\" E:/g1/**/*.[eh]rl"
        " 忽略错误
        let len1 = strlen(str)
        let len2 = strlen(substitute(str, ".", "x", "g"))
        " 中文字符串 - vimgrep
        " 英文字符串 - grep
        if len1 == len2
            " -n 显示行号
            " -r 递归
            " -a 以文本文件查询
            " -H 打印文件名
            " --include 包含文件
            " -w 全字匹配
            " -i 忽略大小写
            try | exe  "Grep -nraHi --include=*.[ehpc][rhtf][lpmg] " . str . " ." |catch | | endtry
        else
            try | execute "vimgrep \"" . str . "\" ." | catch | | endtry
        endif
        copen
    endif
endfunction
map <C-F9> :call SearchWordDialog()<CR>

function! LeaderF_func()
    call SetProjectRoot()
    exe "Leaderf"
endfunction

function! CtrlP_func()
    call SetProjectRoot()
    exe "CtrlP"
endfunction

if g:has_python == 1
    map <F12> :call LeaderF_func()<CR>
else
    map <F12> :call CtrlP_func()<CR>
endif
