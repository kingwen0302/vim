" ----------------------------------
"  CtrlP插件配置
" ----------------------------------
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|log)$',
  \ 'file': '\v\.(exe|so|dll|o|py[co]|beam|dets|log)$',
  \ }
let g:ctrlp_max_files = 0
let g:ctrlp_by_filename = 0
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_match_current_file = 1
let g:ctrlp_root_markers = ['.projectile', '.svn', '.git']

