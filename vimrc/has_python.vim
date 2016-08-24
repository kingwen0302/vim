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
