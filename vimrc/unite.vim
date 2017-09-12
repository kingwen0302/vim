let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.file = {'description' : "FILE"}
let g:unite_source_menu_menus.file.command_candidates = [
            \   ['新建', ':conf ene'],
            \   ['打开', ':browse confirm e'],
            \   ['保存', ':w'],
            \   ['退出', ':qa'],
            \ ]

let g:unite_source_menu_menus.project = {'description' : "PROJECT"}
let g:unite_source_menu_menus.project.command_candidates = [
            \   ['项目列表', ':ProjectView'],
            \   ['文件搜索', ':LeaderfOrCtrlp'],
            \   ['字符搜索', ':SearchWordByGrep'],
            \   ['最近打开项目文件', ':MruCwd'],
            \   ['最近打开文件', ':MruAll'],
            \   ['跳到文件', ':JumpToFile'],
            \   ['编译文件', ':ErlangMake'],
            \ ]
