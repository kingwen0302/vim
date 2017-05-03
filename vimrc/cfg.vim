" 项目常用svn目录
let g:proj_company = [
            \ { "name": "[公司]server",    "path": "E:/qqjy/server/trunk"},
            \ { "name": "[公司]协议",      "path": "E:/qqjy/public/proto"},
            \ { "name": "[公司]005401000", "path": "E:/qqjy/server/branches/qqjy_cn_005401000"},
            \ { "name": "[公司]jy",        "path": "E:/jy_server/trunk/cymmo"},
            \ { "name": "[公司]版署服",    "path": "E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ { "name": "[公司]jy_web",    "path": "E:/qqjy/jy_server/www"},
            \ { "name": "[公司]策划配置",  "path": "E:/qqjy/plan"},
            \ { "name": "[公司]VIM配置",   "path": "D:/myvim"},
            \ { "name": "[公司]web",       "path": "E:/web"},
            \ { "name": "[公司]BLOG",      "path": "E:/blog/blog_www.mingilin.com/blog_source"},
            \ { "name": "[公司]RUST",      "path": "E:/rust"},
            \ { "name": "[公司]ThinkPHP",  "path": "E:/web/thinkphp/Application"},
            \]

let g:proj_person = [
            \ { "name": "[个人]qqjy",    "path": "d:/qqjy/server/trunk"},
            \ { "name": "[个人]rust",    "path": "c:/users/mingilin/rust_learn/project"},
            \ { "name": "[个人]VIM配置", "path": "c:/software/myvim"},
            \]

" 所有项目的配置
let g:proj_all = [
            \ { "name": "☆公司PC项目列表☆",  "conf": g:proj_company},
            \ { "name": "☆个人PC项目列表☆",  "conf": g:proj_person},
            \]

" 项目搜寻目录
" let g:LocalProjectID = 1
let g:proj_search = g:proj_company + g:proj_person
