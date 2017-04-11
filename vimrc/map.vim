" 
" 快捷键
"
" 括号自动补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap < <><LEFT>

map <F2> :MenuToggle <CR>
map <F3> :emenu <C-Z>
map <F4> :bdelete <CR>
map <C-F4> :close <CR>
map <F5> :tab split <CR>
map <F6> :JumpToFile<CR>
" map <F7> :set guifont=Fixedsys:h12<CR> :WMToggle <CR> :TlistToggle <CR>
map <F7> :set guifont=Fixedsys:h12<CR>:if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle <CR>:q<CR> endif<CR><CR>:TagbarToggle<CR>
map <F8> :buffers <CR>
map <F9> :SearchWordByGrep<CR>
map <C-F9> :SearchWordDialog<CR>
map <F11> :ChangeProject<CR>
map <F12> :LeaderfOrCtrlp<CR>
map <S-Enter> :MruCwd<CR>
map <C-Enter> :MruAll<CR>
