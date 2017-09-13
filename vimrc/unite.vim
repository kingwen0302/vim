let file_command_candidates = [
            \   ['> 1. 新建  :conf ene',            ':conf ene'],
            \   ['> 2. 打开  :browse confirm e',    ':browse confirm e'],
            \   ['> 3. 保存  :w',                   ':w'],
            \   ['> 4. 退出  :qa',                  ':qa'],
            \ ]

let project_command_candidates = [
            \   ['> 1. 项目列表          :ProjectView',         ':ProjectView'],
            \   ['> 2. 文件搜索          :LeaderfOrCtrlp',      ':LeaderfOrCtrlp'],
            \   ['> 3. 字符搜索          :SearchWordByGrep',    ':SearchWordByGrep'],
            \   ['> 4. 最近打开项目文件  :MruCwd',              ':MruCwd'],
            \   ['> 5. 最近打开文件      :MruAll',              ':MruAll'],
            \   ['> 6. 跳到文件          :JumpToFile',          ':JumpToFile'],
            \   ['> 7. 编译文件          :ErlangMake',          ':ErlangMake'],
            \ ]

let font_win = [
            \   ["Fixedsys字体    :set guifont=Fixedsys:h12",      ":set guifont=Fixedsys:h12" ],
            \   ["Consolas字体-16 :set guifont=Consolas:h16",      ":set guifont=Consolas:h16" ],
            \   ["Consolas字体-18 :set guifont=Consolas:h18",      ":set guifont=Consolas:h18" ],
            \ ]

let font_linux = [
            \   ["Fixedsys字体    :set guifont=Fixedsys 12",      ":set guifont=Fixedsys\ 12" ],
            \   ["Consolas字体-16 :set guifont=Consolas 16",      ":set guifont=Consolas\ 16" ],
            \   ["Consolas字体-18 :set guifont=Consolas 18",      ":set guifont=Consolas\ 18" ],
            \ ]

let font_command_candidates = (has('win32') ? font_win : font_linux) + [
            \   ["-----------------------------------------",      "" ],
            \   ["desert主题      :colo desert",                   ":colo desert" ],
            \   ["default主题     :colo default",                  ":colo default" ],
            \   ["delek主题       :colo delek",                    ":colo delek" ],
            \   ["peachpuff主题   :colo peachpuff",                ":colo peachpuff" ],
            \   ["zellner主题     :colo zellner",                  ":colo zellner" ],
            \   ["随机主题        :ColorRand",                     ":ColorRand" ],
            \ ]

let format_command_candidates = [
            \   ["转为UTF-8无BOM编码格式    :set fileencoding=utf-8",   ":set fileencoding=utf-8" ],
            \   ["转为ANSI编码格式          :set fileencoding=gbk",     ":set fileencoding=gbk" ],
            \   ["转为unix编码格式          :set fileformat=unix",      ":set fileformat=unix" ],
            \   ["转为dos编码格式           :set fileformat=dos",       ":set fileformat=dos" ],
            \   ["去掉^M                    :%s/\\\\r\+$//e",           ":%s/\\r\\+$//e" ],
            \ ]

let svn_command_candidates = [
            \   ["UPDATE    :SVN update .", ":SVN update ." ],
            \   ["ADD       :SVN add %",    ":SVN add %" ],
            \   ["DIFF      :SVN diff %",   ":SVN diff %" ],
            \   ["COMMIT    :SVN commit %", ":SVN commit %" ],
            \   ["LOG       :SVN log %",    ":SVN log %" ],
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
