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
if has('win32') || has('win64')
    map <F7> :set guifont=Fixedsys:h12<CR>:if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle <CR>:q<CR> endif<CR><CR>:TagbarToggle<CR>
else
    map <F7> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle <CR>:q<CR> endif<CR><CR>:TagbarToggle<CR>
endif
map <F8> :buffers <CR>
map <F9> :SearchWordByGrep<CR>
map <A-F9> :SearchWordByVimGrep<CR>
map <C-F9> :SearchWordDialog<CR>
map <F10> :MyPopup<CR>
map <F11> :ChangeProject<CR>
map <F12> :LeaderfOrCtrlp<CR>
map <C-F10> :ColorRand<CR>
map <C-Enter> :MruCwd<CR>
map <S-Enter> :MruAll<CR>
