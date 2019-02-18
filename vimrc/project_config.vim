" 项目常用svn目录
let s:all_proj_list_src = [
            \ { "own_proj": ["sgh5"],               "name" : "[公司]sgh5-trunk",       "path": "E:/sgh5/server/trunk"},
            \ { "own_proj": ["sg01"],               "name" : "[公司]sg01-trunk",       "path": "E:/sg01/server/trunk"},
            \ { "own_proj": ["sg01"],               "name" : "[公司]sg01-proto",       "path": "E:/sg01/public/协议文档"},
            \ { "own_proj": ["sg01"],               "name" : "[公司]sg01-from",       "path": "E:/trunk"},
            \ { "own_proj": ["sysn"],               "name" : "[公司]sysn-trunk",       "path": "E:/sysn/server/trunk"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-trunk",       "path": "E:/syjy/server/trunk"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-cn_s",       "path": "E:/syjy/server/trunk_cn_s"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-vng_s",       "path": "E:/syjy/server/trunk_vng_s"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-tw_s",       "path": "E:/syjy/server/trunk_tw_s"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-proto-LUA",  "path": "E:/syjy/server/pt/src_proto"},
            \ { "own_proj": ["syjy"],               "name" : "[公司]jysy-proto",  "path": "E:/syjy/public/前后端协议文档"},
            \ { "own_proj": ["qqjy", "s7yy"],       "name" : "[公司]qqjy_67版本",    "path": "E:/qqjy/qqjy_server"},
            \ { "own_proj": ["qqjy"],               "name" : "[公司]qqjy_协议",      "path": "E:/qqjy/public/proto"},
            \ { "own_proj": ["qqjy"],               "name" : "[公司]qqjy_006501000", "path": "E:/qqjy/qqjy_branch/qqjy_cn_006501000"},
            \ { "own_proj": ["qqjy"],               "name" : "[公司]qqjy_版署服",    "path": "E:/qqjy/server/branches/cymmo_20160930_002610000"},
            \ { "own_proj": ["qqjy"],               "name" : "[公司]qqjy_策划配置",  "path": "E:/qqjy/plan"},
            \
            \ { "own_proj": ["s7yy"],               "name" : "[公司]S7YY_服务端",    "path": "E:/s7yy/s7yy_server"},
            \
            \ { "own_proj": ["jy", "qqjy"],         "name" : "[公司]JY_trunk",      "path": "E:/jy_server/trunk/cymmo"},
            \ { "own_proj": ["jy"],                 "name" : "[公司]JY_web",         "path": "E:/jy_server/www"},
            \
            \ { "own_proj": ["my", "qqjy", "s7yy"], "name" : "[公司]MY_web",         "path": "E:/web"},
            \ { "own_proj": ["my", "qqjy", "s7yy"], "name" : "[公司]MY_BLOG",        "path": "E:/blog/blog_mingilin/blog_source"},
            \ { "own_proj": ["my", "qqjy", "s7yy"], "name" : "[公司]MY_RUST",        "path": "E:/rust"},
            \ { "own_proj": ["my", "qqjy", "s7yy"], "name" : "[公司]MY_Elixir",      "path": "E:/elixir_learn"},
            \
            \ { "own_proj": ["person"],             "name" : "[个人]qqjy",    "path": "d:/qqjy/server/trunk"},
            \ { "own_proj": ["person"],             "name" : "[个人]rust",    "path": "c:/users/mingilin/rust_learn/project"},
            \
            \ { "own_proj": ["common"],             "name" : "[公共]VIM配置", "path": g:my_vimrc_dir . "/vimrc"},
            \ { "own_proj": ["common"],             "name" : "[公共]SSH配置", "path": "E:/my_ssh"},
            \]

function! ConvertPath(proj)
    let path = a:proj["path"]
    if has('win32unix')
        " /cygdrive/e/aaaa
        let path = tolower("/cygdrive/" . join(split(path, ":/"), "/"))
        let a:proj["path"] = path
        return a:proj
    elseif has('unix')
        let path = tolower("/" . join(split(path, ":/"), "/"))
        let a:proj["path"] = path
        return a:proj
    else
        return a:proj
    endif
endfunction

let g:all_proj_list = []
for p in s:all_proj_list_src
    call add(g:all_proj_list, ConvertPath(p))
endfor

function! ProjectSort(p1, p2)
    let i1 = index(a:p1["own_proj"], g:selectProj)
    let i2 = index(a:p2["own_proj"], g:selectProj)
    return i1 == i2 ? 0 : i1 > i2 ? 1 : -1
endfunction

function! GetProjects(allProj, selectProj)
    let proj_list = []
    let g:selectProj = a:selectProj
    for p in a:allProj
        if index(p['own_proj'], a:selectProj) != -1
            call add(proj_list, p)
        endif
    endfor
    return sort(proj_list, "ProjectSort")
endfunction

function! Uniq(src_list)
    let ret_list = []
    for i in a:src_list
        if index(ret_list, i) == -1
            call add(ret_list, i)
        endif
    endfor
    return ret_list
endfunction

" gvim.exe --cmd "let g:select_proj='qqjy'"
" vim.exe --cmd "let g:select_proj='qqjy'"
if exists("g:select_proj")
    let g:proj_company = GetProjects(g:all_proj_list, g:select_proj)
" ALL
else
    let g:proj_company = GetProjects(g:all_proj_list, "sgh5")
    let g:proj_company += GetProjects(g:all_proj_list, "sg01")
    let g:proj_company += GetProjects(g:all_proj_list, "syjy")
    let g:proj_company += GetProjects(g:all_proj_list, "qqjy")
    let g:proj_company += GetProjects(g:all_proj_list, "sysn")
    let g:proj_company += GetProjects(g:all_proj_list, "s7yy")
    let g:proj_company = Uniq(g:proj_company)
endif

let g:proj_person = GetProjects(g:all_proj_list, "person")
let g:proj_common = GetProjects(g:all_proj_list, "common")

" 所有项目的配置
let g:proj_all = [
            \ { "name": "☆公司项目☆",  "conf": g:proj_company},
            \ { "name": "☆个人项目☆",  "conf": g:proj_person},
            \ { "name": "☆公共项目☆",  "conf": g:proj_common},
            \]

" 项目搜寻目录
" let g:LocalProjectID = 1
let g:proj_search = g:proj_company + g:proj_person + g:proj_common
