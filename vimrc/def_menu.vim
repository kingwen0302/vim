" ---------------------------------
" 自定义菜单
"
" 1. name和view字段中, 空格使用'\\ '转义
" 2. cmd字段中, 空格使用'\ '转义
" --------------------------------
let g:menu_all = {
            \ "F字体+主题": {
                \  1: {"name" : "&Fixedsys字体",      "os" : "win32", "view": "<TAB>\:set\\ guifont=Fixedsys\:h12",      "cmd" : ":set guifont=Fixedsys:h12<CR>" },
                \  2: {"name" : "&Consolas字体",      "os" : "win32", "view": "<TAB>\:set\\ guifont=Consolas\:h18",      "cmd" : ":set guifont=Consolas:h18<CR>" },
                \  3: {"name" : "&Courier\\ New字体", "os" : "win32", "view": "<TAB>\:set\\ guifont=Courier\\ New\:h16", "cmd" : "set guifont=Courier\ New:h16<CR>" },
                \  4: {"name" : "&Monaco字体",        "os" : "win32", "view": "<TAB>\:set\\ guifont=Monaco\:h14",        "cmd" : ":set guifont=Monaco:h14<CR>" },
                \
                \ 51: {"name" : "&Fixedsys字体",      "os" : "unix", "view": "<TAB>\:set\\ guifont=Fixedsys\\ 12",      "cmd" : ":set guifont=Fixedsys\ 12<CR>" },
                \ 52: {"name" : "&Consolas字体",      "os" : "unix", "view": "<TAB>\:set\\ guifont=Consolas\\ 18",      "cmd" : ":set guifont=Consolas\ 18<CR>" },
                \ 53: {"name" : "&Courier\\ New字体", "os" : "unix", "view": "<TAB>\:set\\ guifont=Courier\\ New\\ 16", "cmd" : "set guifont=Courier\ New\ 16<CR>" },
                \ 54: {"name" : "&Monaco字体",        "os" : "unix", "view": "<TAB>\:set\\ guifont=Monaco\\ 14",        "cmd" : ":set guifont=Monaco\ 14<CR>" },
                \
                \  5: {"name" : "-SEP1-" ,            "os" : "all", "view": "",                                        "cmd" : "<Nop>" },
                \  6: {"name" : "&desert主题",        "os" : "all", "view": "<TAB>\:colo\\ desert",                    "cmd" : ":colo desert<CR>" },
                \  7: {"name" : "&default主题",       "os" : "all", "view": "<TAB>\:colo\\ default",                   "cmd" : ":colo default<CR>" },
                \  8: {"name" : "&delek主题",         "os" : "all", "view": "<TAB>\:colo\\ delek",                     "cmd" : ":colo delek<CR>" },
                \  9: {"name" : "&peachpuff主题",     "os" : "all", "view": "<TAB>\:colo\\ peachpuff",                 "cmd" : ":colo peachpuff<CR>" },
                \ 10: {"name" : "&zellner主题",       "os" : "all", "view": "<TAB>\:colo\\ zellner",                   "cmd" : ":colo zellner<CR>" },
                \},
            \ "M杂项": {
                \  1: {"name" : "调用C(&M)D",                 "os" : "all", "view": "<Tab>\:!cmd\\ /K\\ 目录", "cmd" : ":!start cmd /K \"chcp 936 && pushd expand('%:p:h')\"<CR>" },
                \  2: {"name" : "查找所有(&T)ag",             "os" : "all", "view": "<Tab>\:tselect",          "cmd" : ":tselect <CR>" },
                \  3: {"name" : "日历(&H)",                   "os" : "all", "view": "<Tab>\:CalendarH",        "cmd" : ":CalendarH <CR>" },
                \  4: {"name" : "查看编码(&V)",               "os" : "all", "view": "",                        "cmd" : ":set fileencoding<CR><CR>" },
                \  5: {"name" : "-SEP1-",                     "os" : "all", "view": "",                        "cmd" : "<Nop>" },
                \  6: {"name" : "转为UTF-8无BOM编码格式(&U)", "os" : "all", "view": "",                        "cmd" : ":set fileencoding=utf-8<CR> :echo 'Transfer Completed'<CR>" },
                \  7: {"name" : "转为ANSI编码格式(&G)",       "os" : "all", "view": "",                        "cmd" : ":set fileencoding=gbk<CR><CR> :echo 'Transfer Completed'<CR>" },
                \  8: {"name" : "转为unix编码格式",           "os" : "all", "view": "",                        "cmd" : ":set fileformat=unix<CR>" },
                \  9: {"name" : "转为dos编码格式" ,           "os" : "all", "view": "",                        "cmd" : ":set fileformat=dos<CR>" },
                \ 10: {"name" : "去掉^M" ,                    "os" : "all", "view": "",                        "cmd" : ":%s/\r\+$//e<CR>" },
                \},
            \}
