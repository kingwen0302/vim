function! UpProjectRoot()
    let rootpath = findfile('.projectile', '.;')
    " 有设置.projectile
    if !empty(rootpath)
        let rootpath = fnamemodify(rootpath, ':h')
        let g:project_root = fnameescape(rootpath)
        return
    endif
    " 没有设置.projectile
    " 搜素.svn, .hg, .git
    for repo in ['.svn', '.hg', '.git']
        let repopath = finddir(repo, '.;')
        if !empty(repopath)
            let repopath = fnamemodify(repopath, ':h')
            let g:project_root = fnameescape(repopath)
            return
        endif
    endfor
    " 都没有匹配到
    " 设置当前目录
    let g:project_root = "./"
endfunction

function! SetProjectRoot()
    call UpProjectRoot()
    execute 'cd' g:project_root
endfunction

function! JumpToFile()
    call SetProjectRoot()
    let search_word = expand("<cword>")

    for i in g:file_type_list
        try
            exe "find ./**/" . search_word . "." . i
            return
        catch
            :
        endtry
    endfor
    echo search_word.".[eh]rl ]not found"
endfunction

function! SearchWordByGrep()
    call SetProjectRoot()
    " 使用grep查询
    " 飞一般的速度
    let wd = expand("<cword>")
    if wd == ""
        echo "搜素字符串为空"
        return
    endif
    echo "searching " . wd . ", wait a moment ..."
    let len1 = strlen(wd)
    let len2 = strlen(substitute(wd, ".", "x", "g"))
    " 中文字符串 - vimgrep
    " 英文字符串 - grep
    if len1 == len2
        :Grepper -cword
    else
        exe "vimgrep \"\\<" . wd . "\\>\" " . VimGrepFileType()
        copen
    endif
endfunction

function! SearchWordByVimGrep()
    call SetProjectRoot()
    let wd = expand("<cword>")
    if wd == ""
        echo "搜素字符串为空"
        return
    endif
    echo "searching " . wd . ", wait a moment ..."
    exe "vimgrep \"\\<" . wd . "\\>\" " . VimGrepFileType()
endfunction

function! SearchWordDialog()
    if has('gui_running')
        let str = inputdialog("查询字符串", expand("%:t:r") . ":" . expand("<cword>"))
    else
        let str = input("查询字符串", expand("%:t:r") . ":" . expand("<cword>"))
    endif

    " 是否为空字符串?
    if str == ""
        echomsg "搜素字符串为空"
        return
    endif

    " 开始搜索
    call SetProjectRoot()
    " silent! exe "vimgrep \"" . str . "\" E:/g1/**/*.[eh]rl"
    " 忽略错误
    let len1 = strlen(str)
    let len2 = strlen(substitute(str, ".", "x", "g"))
    " 中文字符串 - vimgrep
    " 英文字符串 - grep
    if len1 == len2
        let g:grepper.ag.grepprg = substitute(g:grepper.ag.grepprg , "--word-regexp", "", "")
        let g:grepper.grep.grepprg = substitute(g:grepper.grep.grepprg , "-nraHwi", "-nraHi", "")
        try | exe "Grepper -query \"" . str . "\"" | catch | | endtry
        let g:grepper.ag.grepprg .= " --word-regexp"
        let g:grepper.grep.grepprg = substitute(g:grepper.grep.grepprg , "-nraHi", "-nraHwi", "")
    else
        try | execute "vimgrep \"" . str . "\" " . VimGrepFileType() | catch | | endtry
        copen
    endif
endfunction

function! VimGrepFileType()
    let file_list = []
    for i in g:file_type_list
        call add(file_list, "**/*." . i)
    endfor
    return join(file_list, " ")
endfunction

function! MruCwd()
    call SetProjectRoot()
    if g:has_python == 1
        :LeaderfMruCwd
    else
        :CtrlPMRUFiles
    endif
endfunction

function! LeaderfOrCtrlp()
    if g:has_python == 1
        call SetProjectRoot()
    exe "Leaderf"
    else
        call UpProjectRoot()
    exe "CtrlP" g:project_root
    endif
endfunction

function! MruAll()
    if g:has_python == 1
        :LeaderfMru
    else
        :CtrlPMRUFiles
    endif
endfunction

command! -nargs=0 SearchWordByGrep call SearchWordByGrep()
command! -nargs=0 SearchWordByVimGrep call SearchWordByVimGrep()
command! -nargs=0 SearchWordDialog call SearchWordDialog()
command! -nargs=0 MruCwd call MruCwd()
command! -nargs=0 MruAll call MruAll()
command! -nargs=0 LeaderfOrCtrlp call LeaderfOrCtrlp()
command! -nargs=0 JumpToFile call JumpToFile()
