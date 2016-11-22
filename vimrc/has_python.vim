" 检测是否有python
let g:has_python = 0
try 
    exe "python 1+1" 
    let g:has_python = 1 
catch
    :
endtry
try 
    exe "python3 1+1"
    let g:has_python = 1
catch
    :
endtry

if g:has_python == 1
    let g:leaderf_or_ctrlp = "Leaderf"
else
    let g:leaderf_or_ctrlp = "CtrlP"
endif
