" 项目搜寻目录
" g:LocalProjectID 是默认项目id
" search_key 必须唯一,目录相近,长的在前
let g:LocalProjectID = 1
let g:proj_search = [
\    [
\        0, 
\        {
\            "name":"JY", 
\            "path":"E:/qqjy/jy_server/trunk/cymmo",
\            "search_key":"qqjy\\jy_server\\trunk\\cymmo", 
\            "search_path": {1:"E:/qqjy/jy_server/trunk/cymmo"} 
\        },
\    ],
\    [
\        1,
\        { 
\            "name":"Q版[服务端]" ,
\            "path":"E:/qqjy/server/trunk",
\            "search_key":"qqjy\\server\\trunk", 
\            "search_path": {1:"E:/qqjy/server/trunk"} 
\        }
\    ],
\    [
\        2,
\        { 
\            "name":"Q版[协议]", 
\            "path":"E:/qqjy/public/proto",
\            "search_key":"qqjy\\public\\proto", 
\            "search_path": {1:"E:/qqjy/public/proto"} 
\        }
\    ],
\    [
\        3,
\        { 
\            "name":"Q版[版署服]",
\            "path":"E:/qqjy/server/branches/cymmo_20160930_002610000",
\            "search_key":"qqjy\\server\\branches\\cymmo_20160930_002610000",
\            "search_path": {1:"E:/qqjy/server/branches/cymmo_20160930_002610000"}
\        }
\    ],
\    [
\        4,
\        {  
\            "name":"VIM",
\            "path":"D:/myvim",
\            "search_key":"myvim",
\            "search_path": {1:"D:/myvim"} 
\        }
\    ],
\]

" 项目常用svn目录
let g:proj_svn_path = [
            \ {"name":"server"  , "path":"E:/qqjy/server/trunk"},
            \ {"name":"协议"    , "path":"E:/qqjy/public/proto"},
            \ {"name":"jy"      , "path":"E:/qqjy/jy_server/trunk/cymmo"},
            \ {"name":"版署服"  , "path":"E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ {"name":"VIM配置" , "path":"D:/myvim"},
            \]

let g:proj_svn_path_3 = [
            \]

" 所有项目的配置
let g:proj_all = [
            \ {"name":"P项目", "conf":g:proj_svn_path},
            \]
