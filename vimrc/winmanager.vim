" let g:winManagerWindowLayout = 'FileExplorer|TagList|BufExplorer'
" let g:winManagerWindowLayout = 'FileExplorer|BufExplorer'
let g:winManagerWindowLayout = 'NERDTree|BufExplorer'
let g:winManagerWidth = 30

" Tag设置
let Tlist_Show_One_File = 1
" let Tlist_Show_Menu = 1
let Tlist_File_Fold_Auto_Close = 1
" let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
" map <F7> :TlistToggle<CR>

let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec "NERDTree"
endfunction

function! NERDTree_IsValid()
    return 1
endfunction
