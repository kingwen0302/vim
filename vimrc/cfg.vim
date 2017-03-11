" 项目搜寻目录
" g:LocalProjectID 是默认项目id
let g:LocalProjectID = 1
let g:proj_search = [
            \ [ 1, { "name": "Q版[服务端]", "path": "E:/qqjy/server/trunk"                             }],
            \ [ 2, { "name": "Q版[协议]",   "path": "E:/qqjy/public/proto"                             }],
            \ [ 3, { "name": "Q版[版署服]", "path": "E:/qqjy/server/branches/cymmo_20160930_002610000" }],
            \ [ 4, { "name": "VIM",         "path": "D:/myvim"                                         }],
            \ [ 5, { "name": "BLOG",        "path": "E:/blog/blog_test/blog_source"                    }],
            \ [ 6, { "name": "RUST",        "path": "D:/language_learn/rust_learn"                     }],
            \ [ 7, { "name": "jy_web",      "path": "E:/qqjy/jy_server/www"                            }],
            \ [ 8, { "name": "ThinkPHP",    "path": "E:/web/thinkphp/Application"                      }],
            \ [ 9, { "name": "004701000",   "path": "E:/qqjy/server/branches/qqjy_cn_004701000"        }],
            \ [10, { "name": "web",         "path": "E:/web"                                           }],
            \ [11, { "name": "JY",          "path": "E:/jy_server/trunk/cymmo"                         }],
            \]

" 项目常用svn目录
let g:proj_svn_path = [
            \ { "name": "server",    "path": "E:/qqjy/server/trunk"},
            \ { "name": "协议",      "path": "E:/qqjy/public/proto"},
            \ { "name": "004701000", "path": "E:/qqjy/server/branches/qqjy_cn_004701000"},
            \ { "name": "jy",        "path": "E:/qqjy/jy_server/trunk/cymmo"},
            \ { "name": "版署服",    "path": "E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ { "name": "jy_web",    "path": "E:/qqjy/jy_server/www"},
            \ { "name": "策划配置",  "path": "E:/qqjy/plan"},
            \]

let g:proj_svn_path_2 = [
            \ { "name": "VIM配置",  "path": "D:/myvim"},
            \ { "name": "web",      "path": "E:/web"},
            \ { "name": "BLOG",     "path": "E:/blog/blog_test/blog_source"},
            \ { "name": "RUST",     "path": "D:/language_learn/rust_learn/project"},
            \ { "name": "ThinkPHP", "path": "E:/web/thinkphp/Application"},
            \]

let g:proj_svn_path_3 = [
            \ { "name": "rust",    "path": "c:/users/mingilin/rust_learn/project"},
            \ { "name": "VIM配置", "path": "c:/software/myvim"},
            \]

" 所有项目的配置
let g:proj_all = [
            \ { "name": "☆☆☆项目名字一定要长☆☆☆",  "conf": g:proj_svn_path},
            \ { "name": "了解",                          "conf": g:proj_svn_path_2},
            \ { "name": "个人电脑项目",                  "conf": g:proj_svn_path_3},
            \]
