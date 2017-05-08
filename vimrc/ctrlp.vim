" ----------------------------------
"  CtrlP插件配置
" ----------------------------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|log)$',
  \ 'file': '\v\.(exe|so|dll|o|py[co]|beam|dets|log)$',
  \ }
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_root_markers = ['.projectile', '.git', '.svn']

