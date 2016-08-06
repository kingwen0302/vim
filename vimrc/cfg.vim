let g:allProj = {
            \ 1:{'name':'红警[默认]', 'path':'/data/red_server/trunk/gameserver', 'search_key':"/data/red_server/trunk/gameserver", "search_path":{1:"/data/red_server/trunk/gameserver"}},
            \ 2:{'name':'宠物'      , 'path':'/data/red_server/trunk/loginserver', 'search_key':"/data/red_server/trunk/gameserver", "search_path":{1:"/data/red_server/trunk/gameserver",}},
            \ 3:{'name':'otp源码'   , 'path':'/data/otp', "search_key":"/data/otp", "search_path":{1:"/data/otp"}},
            \}

" 项目搜寻目录
let g:proj_path = {
\ 1: { "key":"qqjy\\jy_server\\trunk\\cymmo"     , "path": {1:"E:/qqjy/jy_server/trunk/cymmo"} },
\ 2: { "key":"qqjy\\server\\trunk"               , "path": {1:"E:/qqjy/server/trunk"} },
\ 3: { "key":"qqjy\\public"                      , "path": {1:"E:/qqjy/public"} },
\}

" 项目常用svn目录
let g:proj_svn_path = {
            \ 1: {"name":"server"  , "path":"E:/qqjy/server/trunk"}  ,
            \ 2: {"name":"协议"    , "path":"E:/qqjy/public"},
            \ 3: {"name":"jy"      , "path":"E:/qqjy/jy_server/trunk/cymmo"},
            \}

let g:proj_svn_path_2 = {
            \ 1: {"name":"red_gameserver"  , "path":"E:/red/server/trunk/gameserver"}  ,
            \ 2: {"name":"red_loginserver" , "path":"E:/red/server/trunk/loginserver"} ,
            \ 3: {"name":"red_common"      , "path":"E:/red/server/trunk/common"}      ,
            \ 4: {"name":"red_php"         , "path":"E:/red/server/trunk/php"}         ,
            \ 6: {"name":"red_client"      , "path":"E:/red/client"}                   ,
            \ 7: {"name":"red_client_doc"  , "path":"E:/red/client/doc"}               ,
            \}

let g:proj_svn_path_1 = {
            \ 1: {"name":"h5_game" , "path":"E:/h5/server/trunk/game"}  ,
            \ 2: {"name":"h5_php"  , "path":"E:/h5/server/trunk/php"}   ,
            \ 3: {"name":"h5_proto", "path":"E:/h5/client/doc"},
            \}

let g:proj_all = {
            \ 1: {"name":"QQjy", "conf":g:proj_svn_path},
            \}
