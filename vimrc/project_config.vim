" 项目常用svn目录
let g:proj_company = [
            \ { "name": "[公司]server",    "path": "E:/qqjy/server/trunk"},
            \ { "name": "[公司]qqjy-git",  "path": "E:/qqjy_git"},
            \ { "name": "[公司]协议",      "path": "E:/qqjy/public/proto"},
            \ { "name": "[公司]005401000", "path": "E:/qqjy/server/branches/qqjy_cn_005401000"},
            \ { "name": "[公司]jy",        "path": "E:/jy_server/trunk/cymmo"},
            \ { "name": "[公司]版署服",    "path": "E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ { "name": "[公司]jy_web",    "path": "E:/jy_server/www"},
            \ { "name": "[公司]策划配置",  "path": "E:/qqjy/plan"},
            \ { "name": "[公司]web",       "path": "E:/web"},
            \ { "name": "[公司]BLOG",      "path": "E:/blog/blog_mingilin/blog_source"},
            \ { "name": "[公司]RUST",      "path": "E:/rust"},
            \]

let g:proj_person = [
            \ { "name": "[个人]qqjy",    "path": "d:/qqjy/server/trunk"},
            \ { "name": "[个人]rust",    "path": "c:/users/mingilin/rust_learn/project"},
            \]

let g:proj_common = [
            \ { "name": "[公共]VIM配置", "path": g:my_vimrc_dir . "/vimrc"},
            \]

" 所有项目的配置
let g:proj_all = [
            \ { "name": "☆公司项目☆",  "conf": g:proj_company},
            \ { "name": "☆个人项目☆",  "conf": g:proj_person},
            \ { "name": "☆公共项目☆",  "conf": g:proj_common},
            \]

" 项目搜寻目录
" let g:LocalProjectID = 1
let g:proj_search = g:proj_company + g:proj_person + g:proj_common
