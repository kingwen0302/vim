"set bomb
set encoding=utf-8
" 设置菜单编码
set langmenu="zh_cn.utf-8"
language message zh_cn.utf-8
set fileencodings=utf-8,gbk,chinese,gb2312,gb18030,cp936,ucs-bom,euc-jp,euc-kr
set fileencoding=utf-8
if has('win32')
    set termencoding=gbk
    " 支持ctrl-c, ctrl-v
    source $VIMRUNTIME/mswin.vim
else
    set termencoding=utf-8
endif
