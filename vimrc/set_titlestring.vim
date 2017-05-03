function! SetTitleString()
    call UpProjectRoot()
    let f1 = fnamemodify(g:project_root, ":p:gs?/?\\?")
    let tstring = "UNDEFINED"
    for i in g:proj_search
        let f2 = fnamemodify(i['path'], ":p:gs?/?\\?")
        if f1 == f2
            let tstring = i['name'] . " | " . expand("%:p")
            break
        endif
    endfor
    let &titlestring = tstring
endfunction
auto BufEnter * call SetTitleString()
set title
