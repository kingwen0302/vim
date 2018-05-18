" 检测是否有python
function! CheckPythonVersion()
python << EOF
from vim import *
import sys
ver = sys.version_info
if ver[0] == 2 and ver[1] >= 7:
    command("let g:has_python = 1")
elif ver[0] == 3:
    command("let g:has_python = 1")
else:
    command("let g:has_python = 0")
EOF
endfunction

let g:has_python = 0
try 
    exe "python 1+1"
    call CheckPythonVersion()
catch
    :
endtry
try 
    exe "python3 1+1"
    call CheckPythonVersion()
catch
    :
endtry

if g:has_python == 1
    let g:leaderf_or_ctrlp = "Leaderf"
else
    let g:leaderf_or_ctrlp = "CtrlP"
endif
