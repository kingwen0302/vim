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
\            "search_path": {1:"E:/qqjy/jy_server/trunk/cymmo"}, 
\            "linux_search_path": {1:"/cygdrive/e/qqjy/jy_server/trunk/cymmo"} 
\        },
\    ],
\    [
\        1,
\        { 
\            "name":"Q版[服务端]" ,
\            "path":"E:/qqjy/server/trunk",
\            "search_key":"qqjy\\server\\trunk", 
\            "search_path": {1:"E:/qqjy/server/trunk"},
\            "linux_search_path": {1:"/cygdrive/e/qqjy/server/trunk"} 
\        }
\    ],
\    [
\        2,
\        { 
\            "name":"Q版[协议]", 
\            "path":"E:/qqjy/public/proto",
\            "search_key":"qqjy\\public\\proto", 
\            "search_path": {1:"E:/qqjy/public/proto"},
\            "linux_search_path": {1:"/cygdrive/e/qqjy/public/proto"} 
\        }
\    ],
\    [
\        3,
\        { 
\            "name":"Q版[版署服]",
\            "path":"E:/qqjy/server/branches/cymmo_20160930_002610000",
\            "search_key":"qqjy\\server\\branches\\cymmo_20160930_002610000",
\            "search_path": {1:"E:/qqjy/server/branches/cymmo_20160930_002610000"},
\            "linux_search_path": {1:"/cygdrive/e/qqjy/server/branches/cymmo_20160930_002610000"}
\        }
\    ],
\    [
\        4,
\        {  
\            "name":"VIM",
\            "path":"D:/myvim",
\            "search_key":"myvim",
\            "search_path": {1:"D:/myvim"},
\            "linux_search_path": {1:"/cygdrive/d/myvim"} 
\        }
\    ],
\    [
\        5,
\        {  
\            "name":"BLOG",
\            "path":"E:/blog/blog_test/blog_source",
\            "search_key":"blog\\blog_test\\blog_source",
\            "search_path": {1:"E:/blog/blog_test/blog_source"},
\            "linux_search_path": {1:"/cygdrive/e/blog/blog_test/blog_source"} 
\        }
\    ],
\    [
\        6,
\        {  
\            "name":"RUST",
\            "path":"D:/language_learn/rust_learn",
\            "search_key":"language_learn\\rust_learn\\project",
\            "search_path": {1:"D:/language_learn/rust_learn/project"},
\            "linux_search_path": {1:"/cygdrive/d/language_learn/rust_learn/project"} 
\        }
\    ],
\    [
\        7,
\        {  
\            "name":"jy_web",
\            "path":"E:/qqjy/jy_server/www",
\            "search_key":"qqjy\\jy_server\\www",
\            "search_path": {1:"E:/qqjy/jy_server/www"},
\            "linux_search_path": {1:"/cygdrive/e/qqjy/jy_server/www"}
\        }
\    ],
\    [
\        8,
\        {  
\            "name":"ThinkPHP",
\            "path":"E:/web/thinkphp/Application",
\            "search_key":"web\\thinkphp\\Application",
\            "search_path": {1:"E:/web/thinkphp/Application"},
\            "linux_search_path": {1:"/cygdrive/e/web/thinkphp/Application"}
\        }
\    ],
\]

" 项目常用svn目录
let g:proj_svn_path = [
            \ {"name": "server"  , "path": "E:/qqjy/server/trunk"},
            \ {"name": "协议"    , "path": "E:/qqjy/public/proto"},
            \ {"name": "jy"      , "path": "E:/qqjy/jy_server/trunk/cymmo"},
            \ {"name": "版署服"  , "path": "E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ {"name": "jy_web"  , "path": "E:/qqjy/jy_server/www"},
            \ {"name": "策划配置", "path": "E:/qqjy/plan"},
            \]

let g:proj_svn_path_2 = [
            \ {"name": "VIM配置" , "path": "D:/myvim"},
            \ {"name": "BLOG"    , "path": "E:/blog/blog_test/blog_source"},
            \ {"name": "RUST"    , "path": "D:/language_learn/rust_learn/project"},
            \ {"name": "ThinkPHP", "path": "E:/web/thinkphp/Application"},
            \]

let g:proj_svn_path_3 = [
            \ {"name": "rust"    , "path": "c:/users/mingilin/rust_learn/project"},
            \ {"name": "VIM配置" , "path": "c:/software/myvim"},
            \]

" 所有项目的配置
let g:proj_all = [
            \ {"name": "☆☆☆项目名字一定要长☆☆☆",  "conf": g:proj_svn_path},
            \ {"name": "了解",                          "conf": g:proj_svn_path_2},
            \ {"name": "个人电脑项目",                  "conf": g:proj_svn_path_3},
            \]
