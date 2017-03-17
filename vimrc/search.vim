function! SetProjectRoot()
    let rootpath = findfile('.projectile', '.;')
    if !empty(rootpath)
        let rootpath = fnamemodify(rootpath, ':h')
        execute 'cd' fnameescape(rootpath)
        return
    else
        for repo in ['.svn', '.hg', '.git']
            let repopath = finddir(repo, '.;')
            if !empty(repopath)
                let repopath = fnamemodify(repopath, ':h')
                execute 'cd' fnameescape(repopath)
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
        :Grepper -cword
    else
        exe "vimgrep \"\\<" . wd . "\\>\" **/*.[ehpc][rhtf][lpmg]"
        copen
    endif
endfunction
map <F9> :call SearchWordByGrep()<CR>

function! SearchWordDialog()
    if has('gui_running')
        let str = inputdialog("查询字符串", expand("%:t:r") . ":" . expand("<cword>"))
    else
        let str = input("查询字符串", expand("%:t:r") . ":" . expand("<cword>"))
    endif
    if str != ""
        call SetProjectRoot()
        " silent! exe "vimgrep \"" . str . "\" E:/g1/**/*.[eh]rl"
        " 忽略错误
        let len1 = strlen(str)
        let len2 = strlen(substitute(str, ".", "x", "g"))
        " 中文字符串 - vimgrep
        " 英文字符串 - grep
        if len1 == len2
            try | exe "Grepper -query " . str | catch | | endtry
        else
            try | execute "vimgrep \"" . str . "\" **/*.[ehpc][rhtf][lpmg]" | catch | | endtry
            copen
        endif
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

command! -nargs=0 SearchWordByGrep call SearchWordByGrep()
command! -nargs=0 SearchWordDialog call SearchWordDialog()
