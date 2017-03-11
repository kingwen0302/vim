" ----------------------------------
"  Leaderf插件配置
" ----------------------------------
let g:Lf_DefaultMode = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git', 'erl_logs', 'log'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.b','*.s','*.scn','*.str','*csv','*.zip','*.rar', '*.beam', "*.dets", "*.dump", "*.log", "*.~*", "*.*#"]
            \}
let g:Lf_MruFileExclude = ['*.so','*.exe','*.beam','*.log']
let g:Lf_WindowPosition = 2

nmap <C-Enter> :LeaderfMru<cr>
