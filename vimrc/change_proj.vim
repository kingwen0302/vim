" 默认项目目录
if !exists('g:LocalProjectID')
    let g:LocalProjectID = 0
endif
let g:LocalProjectDir = g:proj_search[g:LocalProjectID]['path']

" 切换项目目录
function! ChangeProj()
    let note = "项目列表:\n"
    let g:proj_index = 0
    for value in g:proj_search
        let note .= g:proj_index . "-" . value['name'] . "\n"
        let g:proj_index += 1
    endfor
    " 高亮显示
    " echohl WarningMsg
    " echohl None
    let note .= "\n当前选择:" . g:LocalProjectID . "\n"
    let note .= "请选择(Ctrl-C取消):"
    let selectID = input(note, "")
    let projID = get(g:proj_search, selectID, {})
    if projID == {}
        let selectID = g:LocalProjectID
        echo "\n未切换"
        return
    endif
    let g:LocalProjectID = selectID
    let g:LocalProjectDir = g:proj_search[selectID]['path']
    exe "cd " . g:LocalProjectDir
    echo "\n切换后的目录:" . g:LocalProjectDir . "\n"
endfunction
map <silent> <F11> :call ChangeProj() <CR>
