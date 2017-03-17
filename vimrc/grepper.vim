runtime autoload/grepper.vim

let g:grepper.highlight = 1
let g:grepper.quickfix = 1
let g:grepper.prompt = 0
let g:grepper.switch = 1
let g:grepper.dir = 'cwd'

" let g:grepper.tools = ['ag', 'ack', 'grep', 'findstr', 'rg', 'pt', 'sift', 'git']

" 检测系统中可以使用的工具
" let s:tools = g:grepper.tools
" let g:grepper.tools = []
" for tool in s:tools
"     if executable(tool)
"         let g:grepper.tools += [tool]
"     endif
" endfor

" 使用ag
" -G 包含的文件
" --word-regexp 全字匹配
" --all-text 文本文件
" let g:grepper.ag.grepprg .= ' -G .*.[ehpc][rhtf][lpmg] --word-regexp --all-text --skip-vcs-ignores --vimgrep --smart-case'
let g:grepper.ag.grepprg .= ' --word-regexp --all-text --skip-vcs-ignores --vimgrep --smart-case'
" 很怪异
if has('win32')
    let g:grepper.ag.grepprg .= ' -G .*.erl|.*.hrl|.*.cfg|.*.php|.*.htm'
else
    let g:grepper.ag.grepprg .= ' -G ' . fnameescape('.*.erl|.*.hrl|.*.cfg|.*.php|.*.htm')
endif

" 使用grep/git-grep
" -n 显示行号
" -r 递归
" -a 以文本文件查询
" -H 打印文件名
" --include 包含文件
" -w 全字匹配
" -i 忽略大小写
" let g:grepper.grep.grepprg .= " -nraHwi --include=*.[ehpc][rhtf][lpmg]"
let g:grepper.grep.grepprg .= " -nraHwi --include=*.erl --include=*.hrl --include=*.cfg --include=*.php --include=*.htm"

" 使用findstr
let g:grepper.findstr.grepprg .= " *.erl *.hrl *.php *.cfg *.htm"
