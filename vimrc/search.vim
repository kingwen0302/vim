function! GetDirs()
    let dir = expand("%:p")
    for [id, config] in items(g:allProj)
        let is_match = 1
        let key     = config["search_key"]
        let path    = config["search_path"]
        for key_1 in split(key, "/")
            if matchstr(dir, key_1) != ""
                let is_match = is_match && 1
            else
                let is_match = is_match && 0
            endif
        endfor
        if is_match == 1
            return path
        endif
    endfor
    return {1:"."}
endfunction

function! DirsToPath()
    let path = ""
    for [key, dir] in items(g:FXDirs)
        let path = path . " " . dir . "/**/*.[ehp][rht][lpm]"
    endfor
    return path
endfunction

function! SearchWord()
    let g:searchPath = GetDirs()
    let Path = DirsToPath()
    exe "vimgrep \"\\<" . expand("<cword>") . "\\>\" " . Path 
endfunction
map <F9> :call SearchWord()<CR>

function! SearchWordDialog()
  let str = inputdialog("查询", expand("%:t:r") . ":" . expand("<cword>"))
  if str != ""
    " 忽略错误
    let g:searchPath = GetDirs()
    let Path         = DirsToPath()
    try | execute "vimgrep \"" . str . "\" " . Path | catch | | endtry
    " exec 'cw'
  endif
endfunction
map <C-F9> :call SearchWordDialog()<CR>
