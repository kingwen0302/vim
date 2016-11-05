function! GetDirs()
    let dir = expand("%:p")
    for value in g:proj_search
        let ind = value[0]
        let pa  = value[1]
        let is_match = 1
        let key = pa["search_key"]
        if has("win32") 
            let FXDir = pa["search_path"]
        else
            let FXDir = pa["linux_search_path"]
        endif
        for key_1 in split(key, "\\")
            if matchstr(dir, key_1) != ""
                let is_match = is_match && 1
            else
                let is_match = is_match && 0
            endif
        endfor
        if is_match == 1
            return FXDir
        endif
    endfor
    return {1:"."}
endfunction

function! FindFile()
    let FXDirs = GetDirs()
    let search_word = expand("<cword>")
    for [key, dir] in items(FXDirs)
        try 
            exe "find " . dir . "/**/" . search_word . ".erl" 
            return
        catch
            try 
                exe "find " . dir . "/**/" . search_word . ".hrl" 
                return
            catch
                continue
            endtry
        endtry
    endfor
    echo search_word.".[eh]rl ]not found"
endfunction

function! DirsToPath()
    let path = ""
    for [key, dir] in items(g:FXDirs)
        let path = path . " " . dir . "/**/*.[ehpc][rhtf][lpmg]"
    endfor
    return path
endfunction

function! DirsToPath_1()
    let path = ""
    for [key, dir] in items(g:FXDirs)
        let path = path . " " . dir
    endfor
    return path
endfunction

map <F6> :call FindFile()<CR>

function! SearchWordByGrep()
    let g:FXDirs = GetDirs()
    " 使用grep查询
    " 飞一般的速度
    let wd = expand("<cword>")
    let len1 = strlen(wd)
    let len2 = strlen(substitute(wd, ".", "x", "g"))
    " 中文字符串 - vimgrep
    " 英文字符串 - grep
    if len1 == len2
        let Path = DirsToPath_1()
        " -n 显示行号
        " -r 递归
        " -a 以文本文件查询
        " -H 打印文件名
        " --include 包含文件
        " -w 全字匹配
        " -i 忽略大小写
        exe  "Grep -nraHwi --include=*.[ehpc][rhtf][lpmg] " . expand("<cword>") . " " . Path 
    else
        let Path = DirsToPath()
        exe "vimgrep \"\\<" . expand("<cword>") . "\\>\" " . Path
    endif
    copen
endfunction
map <F9> :call SearchWordByGrep()<CR>

function! SearchWordByVimGrep()
    let g:FXDirs = GetDirs()
    " 使用vimgrep查询
    " 速度较慢,但是兼容好
    let Path = DirsToPath()
    exe "vimgrep \"\\<" . expand("<cword>") . "\\>\" " . Path
endfunction
map <A-F9> :call SearchWordByVimGrep()<CR>

function! SearchWordDialog()
  let str = inputdialog("查询", expand("%:t:r") . ":" . expand("<cword>"))
  if str != ""
    " silent! exe "vimgrep \"" . str . "\" E:/g1/**/*.[eh]rl"
    " 忽略错误
    let g:FXDirs = GetDirs()
    let Path = DirsToPath()
    try | execute "vimgrep \"" . str . "\" " . Path | catch | | endtry
    " exec 'cw'
  endif
endfunction
map <C-F9> :call SearchWordDialog()<CR>

function! LeaderF_func()
    let FXDir = GetDirs()
    exe "Leaderf " . FXDir['1']
endfunction
map <F12> :call LeaderF_func()<CR>
