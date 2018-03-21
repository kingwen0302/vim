let file_command_candidates = [
            \   ['> 1. 新建  :conf ene',            ':conf ene'],
            \   ['> 2. 打开  :browse confirm e',    ':browse confirm e'],
            \   ['> 3. 保存  :w',                   ':w'],
            \   ['> 4. 退出  :qa',                  ':qa'],
            \   ['> 0. 按q返回',                    ''],
            \ ]

let project_command_candidates = [
            \   ['> 1. 项目列表                 :ProjectView',         ':ProjectView'],
            \   ['> 2. 文件搜索                 :LeaderfOrCtrlp',      ':LeaderfOrCtrlp'],
            \   ['> 3. 字符搜索                 :SearchWordByGrep',    ':SearchWordByGrep'],
            \   ['> 4. 最近打开项目文件         :MruCwd',              ':MruCwd'],
            \   ['> 5. 最近打开文件             :MruAll',              ':MruAll'],
            \   ['> 6. 跳到文件                 :JumpToFile',          ':JumpToFile'],
            \   ['> 7. 编译文件                 :ErlangMake',          ':ErlangMake'],
            \   ['> 8. 字符搜素替换(不支持中文) :CtrlSF',              ':CtrlSF'],
            \   ['> 0. 按q返回',                                       ''],
            \ ]

let font_win = [
            \   ["> 1. Fixedsys字体    :set guifont=Fixedsys:h12",      ":set guifont=Fixedsys:h12" ],
            \   ["> 2. Consolas字体-16 :set guifont=Consolas:h16",      ":set guifont=Consolas:h16" ],
            \   ["> 3. Consolas字体-18 :set guifont=Consolas:h18",      ":set guifont=Consolas:h18" ],
            \ ]

let font_linux = [
            \   ["> 1. Fixedsys字体    :set guifont=Fixedsys 12",      ":set guifont=Fixedsys\ 12" ],
            \   ["> 2. Consolas字体-16 :set guifont=Consolas 16",      ":set guifont=Consolas\ 16" ],
            \   ["> 3. Consolas字体-18 :set guifont=Consolas 18",      ":set guifont=Consolas\ 18" ],
            \ ]

let font_command_candidates = (has('win32') ? font_win : font_linux) + [
            \   ["-----------------------------------------",      "" ],
            \   ["> 4. desert主题      :colo desert",                   ":colo desert" ],
            \   ["> 5. default主题     :colo default",                  ":colo default" ],
            \   ["> 6. delek主题       :colo delek",                    ":colo delek" ],
            \   ["> 7. peachpuff主题   :colo peachpuff",                ":colo peachpuff" ],
            \   ["> 8. zellner主题     :colo zellner",                  ":colo zellner" ],
            \   ["> 9. 随机主题        :ColorRand",                     ":ColorRand" ],
            \   ['> 0. 按q返回',                                   ''],
            \ ]

let format_command_candidates = [
            \   ["> 1. 转为UTF-8无BOM编码格式    :set fileencoding=utf-8",   ":set fileencoding=utf-8" ],
            \   ["> 2. 转为ANSI编码格式          :set fileencoding=gbk",     ":set fileencoding=gbk" ],
            \   ["> 3. 转为unix编码格式          :set fileformat=unix",      ":set fileformat=unix" ],
            \   ["> 4. 转为dos编码格式           :set fileformat=dos",       ":set fileformat=dos" ],
            \   ["> 5. 去掉^M                    :%s/\\\\r\+$//e",           ":%s/\\r\\+$//e" ],
            \   ['> 0. 按q返回',                                             ''],
            \ ]

let svn_command_candidates = [
            \   ["> 1. UPDATE    :SVN update .", ":SVN update ." ],
            \   ["> 2. ADD       :SVN add %",    ":SVN add %" ],
            \   ["> 3. DIFF      :SVN diff %",   ":SVN diff %" ],
            \   ["> 4. COMMIT    :SVN commit %", ":SVN commit %" ],
            \   ["> 5. LOG       :SVN log %",    ":SVN log %" ],
            \   ['> 0. 按q返回',                 ''],
            \ ]

let g:unite_source_menu_menus = {
            \ '> 1. 文件': {'command_candidates': file_command_candidates},
            \ '> 2. 项目': {'command_candidates': project_command_candidates},
            \ '> 3. 字体&主题': {'command_candidates': font_command_candidates},
            \ '> 4. 格式化': {'command_candidates': format_command_candidates},
            \ '> 5. SVN': {'command_candidates': svn_command_candidates},
            \ }

fun! MyUnite()
    :Unite menu
endf
" command! -nargs=1 MyPopup call MyPopup(<args>)
command! -nargs=0 MyUnite call MyUnite()
