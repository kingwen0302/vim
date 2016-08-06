" 状态栏设置
set statusline=2
set statusline=[%n]
set statusline+=%f%m%r%h%y
" set statusline+=\ \|\ 目录:\ %{CurDir()}\
set statusline+=\ \|\ %=
set statusline+=\ \|\ 行:%l/%L-%P,列:%c
"set statusline+=\ \|\ ascii=%b,hex=%b
set statusline+=\ \|\ %{&fenc!=''?&fenc:&enc}编码:%b
set statusline+=\ \|\ %{&ff}
" set statusline+=\ \|\ %{$USER}@%{hostname()}
set statusline+=\ \|\ %{strftime(\"%Y年%m月%d日\ %H:%M\")}
set statusline+=\ \|\ 酷抠族
" set statusline+=\ \|\ kingwen0302@msn.com