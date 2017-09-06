fun! MyPopup()
    let g:popup#arrow = '>'
    exe popup#popup('menu')
endf
" command! -nargs=1 MyPopup call MyPopup(<args>)
command! -nargs=0 MyPopup call MyPopup()
let g:popup#arrow = ''

call popup#add('menu', '菜单',
    \['f', '文件', [
        \['n', '新建', ":conf ene"],
        \['o', '打开', ":browse confirm e"],
        \['s', '保存', ":w"],
        \['x', '退出', ":qa"]]
    \],
    \['p', '项目', [
        \['l', '项目列表', ':ProjectView'],
        \['f', '文件搜索', ':LeaderfOrCtrlp'],
        \['s', '字符搜索', ':SearchWordByGrep'],
        \['c', '最近打开项目文件', ':MruCwd'],
        \['a', '最近打开文件', ':MruAll'],
        \['j', '跳到文件', ':JumpToFile'],
        \['m', '编译文件', ':ErlangMake']]
    \],
    \['m', '杂项', [
        \['m', '显示/关闭菜单栏', ':MenuToggle']]
    \],
    \['t', '标签', [
        \['s', '复制', ':tab split'],
        \['c', '关闭', ':close'],
        \['d', '删除', ':bdelete']]
    \],
    \)
" map <A-w> :call Popup('window')<CR>
