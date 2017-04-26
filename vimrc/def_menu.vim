" ---------------------------------
" 自定义菜单
"
" 1. name和view字段中, 空格使用'\\ '转义
" 2. cmd字段中, 空格使用'\ '转义
" 3. g:menu_list = [ [ 菜单名字1, [子项1, 子项2] ], [ 菜单名字2, [] ] ]
" --------------------------------
let g:menu_list = [
            \    [
            \        "Subversion",
            \        [
            \            {"name" : "U(&P)DATE", "os" : "all", "view": "<TAB>\:SVN\\ update", "cmd" : ":SVN update . <CR>" },
            \            {"name" : "(&A)DD",    "os" : "all", "view": "<TAB>\:SVN\\ add",    "cmd" : ":SVN add %<CR>" },
            \            {"name" : "(&D)IFF",   "os" : "all", "view": "<TAB>\:SVN\\ diff",   "cmd" : ":SVN diff %<CR>" },
            \            {"name" : "(&C)OMMIT", "os" : "all", "view": "<TAB>\:SVN\\ commit", "cmd" : ":SVN commit %<CR>" },
            \            {"name" : "(&L)OG",    "os" : "all", "view": "<TAB>\:SVN\\ log",    "cmd" : ":SVN log %<CR>" },
            \        ]
            \    ],
            \    [
            \        "F字体+主题",
            \        [
            \            {"name" : "&Fixedsys字体",      "os" : "win32", "view": "<TAB>\:set\\ guifont=Fixedsys\:h12",      "cmd" : ":set guifont=Fixedsys:h12<CR>" },
            \            {"name" : "&Consolas字体-16",   "os" : "win32", "view": "<TAB>\:set\\ guifont=Consolas\:h16",      "cmd" : ":set guifont=Consolas:h16<CR>" },
            \            {"name" : "&Consolas字体-18",   "os" : "win32", "view": "<TAB>\:set\\ guifont=Consolas\:h18",      "cmd" : ":set guifont=Consolas:h18<CR>" },
            \            {"name" : "&Courier\\ New字体", "os" : "win32", "view": "<TAB>\:set\\ guifont=Courier\\ New\:h16", "cmd" : ":set guifont=Courier\ New:h16<CR>" },
            \            {"name" : "&Monaco字体",        "os" : "win32", "view": "<TAB>\:set\\ guifont=Monaco\:h14",        "cmd" : ":set guifont=Monaco:h14<CR>" },
            \        
            \            {"name" : "&Fixedsys字体",      "os" : "unix", "view": "<TAB>\:set\\ guifont=Fixedsys\\ 12",      "cmd" : ":set guifont=Fixedsys\ 12<CR>" },
            \            {"name" : "&Consolas字体",      "os" : "unix", "view": "<TAB>\:set\\ guifont=Consolas\\ 18",      "cmd" : ":set guifont=Consolas\ 18<CR>" },
            \            {"name" : "&Courier\\ New字体", "os" : "unix", "view": "<TAB>\:set\\ guifont=Courier\\ New\\ 16", "cmd" : ":set guifont=Courier\ New\ 16<CR>" },
            \            {"name" : "&Monaco字体",        "os" : "unix", "view": "<TAB>\:set\\ guifont=Monaco\\ 14",        "cmd" : ":set guifont=Monaco\ 14<CR>" },
            \        
            \            {"name" : "-SEP1-" ,            "os" : "all", "view": "",                                        "cmd" : "<Nop>" },
            \            {"name" : "&desert主题",        "os" : "all", "view": "<TAB>\:colo\\ desert",                    "cmd" : ":colo desert<CR>" },
            \            {"name" : "&default主题",       "os" : "all", "view": "<TAB>\:colo\\ default",                   "cmd" : ":colo default<CR>" },
            \            {"name" : "&delek主题",         "os" : "all", "view": "<TAB>\:colo\\ delek",                     "cmd" : ":colo delek<CR>" },
            \            {"name" : "&peachpuff主题",     "os" : "all", "view": "<TAB>\:colo\\ peachpuff",                 "cmd" : ":colo peachpuff<CR>" },
            \            {"name" : "&zellner主题",       "os" : "all", "view": "<TAB>\:colo\\ zellner",                   "cmd" : ":colo zellner<CR>" },
            \            {"name" : "&solarized-dark主题","os" : "all", "view": "<TAB>\:colo\\ solarized",                 "cmd" : ":set background=dark<CR>:colo solarized<CR>" },
            \            {"name" : "&solarized-light主题",  "os" : "all", "view": "<TAB>\:colo\\ solarized",              "cmd" : ":set background=light<CR>:colo solarized<CR>" },
            \            {"name" : "随机主题",           "os" : "all", "view": "<TAB>\:ColorRand",                        "cmd" : ":ColorRand<CR>" },
            \        
            \            {"name" : "-SEP2-" ,            "os" : "win32", "view": "", "cmd" : "<Nop>" },
            \            {"name" : "&透明225",           "os" : "win32", "view": "", "cmd" : ":call libcallnr('vimtweak.dll', 'SetAlpha', 225) <CR>" },
            \            {"name" : "&不透明",            "os" : "win32", "view": "", "cmd" : ":call libcallnr('vimtweak.dll', 'SetAlpha', 255) <CR>" },
            \            {"name" : "最前端显示",         "os" : "win32", "view": "", "cmd" : ":call libcallnr('vimtweak.dll', 'EnableTopMost', 1) <CR>" },
            \            {"name" : "最前端取消",         "os" : "win32", "view": "", "cmd" : ":call libcallnr('vimtweak.dll', 'EnableTopMost', 0) <CR>" },
            \            {"name" : "&Cygwin",            "os" : "win32", "view": "", "cmd" : ":ConqueTerm C:\\cygwin64\\Cygwin.bat<CR>" },
            \        ]
            \    ],
            \    [
            \        "M杂项",
            \        [
            \            {"name" : "调用C(&M)D",                 "os" : "all", "view": "<Tab>\:!cmd\\ /K\\ 目录", "cmd" : ":!start cmd /K \"chcp 936 && pushd expand('%:p:h')\"<CR>" },
            \            {"name" : "调用(&C)onEmu64",            "os" : "all", "view": "<Tab>\:!ConEmu64",        "cmd" : ":!start C:/Program Files/ConEmu/ConEmu64.exe -run cmd /K pushd expand('%:p:h')<CR>" },
            \            {"name" : "查找所有(&T)ag",             "os" : "all", "view": "<Tab>\:tselect",          "cmd" : ":tselect <CR>" },
            \            {"name" : "日历(&H)",                   "os" : "all", "view": "<Tab>\:CalendarH",        "cmd" : ":CalendarH <CR>" },
            \            {"name" : "查看编码(&V)",               "os" : "all", "view": "",                        "cmd" : ":set fileencoding<CR><CR>" },
            \            {"name" : "-SEP1-" ,                    "os" : "all", "view": "",                        "cmd" : "<Nop>" },
            \            {"name" : "转为UTF-8无BOM编码格式(&U)", "os" : "all", "view": "",                        "cmd" : ":set fileencoding=utf-8<CR> :echo 'Transfer Completed'<CR>" },
            \            {"name" : "转为ANSI编码格式(&G)",       "os" : "all", "view": "",                        "cmd" : ":set fileencoding=gbk<CR><CR> :echo 'Transfer Completed'<CR>" },
            \            {"name" : "转为unix编码格式",           "os" : "all", "view": "",                        "cmd" : ":set fileformat=unix<CR>" },
            \            {"name" : "转为dos编码格式" ,           "os" : "all", "view": "",                        "cmd" : ":set fileformat=dos<CR>" },
            \            {"name" : "-SEP2-" ,                    "os" : "all", "view": "",                        "cmd" : "<Nop>" },
            \            {"name" : "去掉^M" ,                    "os" : "all", "view": "<Tab>\:%s/\\\\r\\\\+$//e","cmd" : ":%s/\\r\\+$//e<CR>" },
            \            {"name" : "-SEP3-" ,                    "os" : "all", "view": "",                        "cmd" : "<Nop>" },
            \            {"name" : "项目列表",                   "os" : "all", "view": "<Tab>\:ProjectView",      "cmd" : ":ProjectView<CR>" },
            \            {"name" : "开启/关闭自动补全",          "os" : "all", "view": "<Tab>\:NeoCompleteToggle","cmd" : ":NeoCompleteToggle<CR>" },
            \        ]
            \    ],
            \]
