" ----------------------------------
"  Leaderf插件配置
" ----------------------------------
let g:Lf_DefaultMode = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git', 'erl_logs', 'log'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.b','*.s','*.scn','*.str','*csv','*.zip','*.rar', '*.beam', "*.dets", "*.dump", "*.log", "*.~*", "*.*#"]
            \}
let g:Lf_MruFileExclude = ['*.so','*.exe','*.beam','*.log']
let g:Lf_WindowPosition = 2

" 默认项目目录
if !exists('g:LocalProjectID')
    let g:LocalProjectID = 1
endif
let g:LocalProjectDir = g:allProj[g:LocalProjectID]['path']

" 切换项目目录
function! ChangeProj()
    let note = "项目列表:\n"
    for [id, v] in items(g:allProj)
        let note .= id . "-" . v['name'] . "\n"
    endfor
    " 高亮显示
    " echohl WarningMsg
    " echohl None
    let note .= "\n当前选择:" . g:LocalProjectID . "\n"
    let note .= "请选择(Ctrl-C取消):"
    let selectID = input(note, "")
    let projID = get(g:allProj, selectID, {})
    if projID == {}
        let selectID = g:LocalProjectID
        echo "\n未切换"
        return
    endif
    let g:LocalProjectID = selectID
    let g:LocalProjectDir = g:allProj[selectID]['path']
    echo "\n切换后的目录:" . g:LocalProjectDir . "\n"
endfunction
map <silent> <F11> :call ChangeProj() <CR>
nmap <C-Enter> :LeaderfMru<cr>
