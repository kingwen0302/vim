function! <SID>TransferWord()
    exe "!sdcv --use-dict stardict1.3英汉辞典 " . expand("<cword>")
endfunction

command! -nargs=0 Dict call <SID>TransferWord()
