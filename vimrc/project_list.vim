let s:ProjectWinName = "ProjectList"

let s:ProjectHelpDoc = [
            \ { "name": "+======+=====================+"},
            \ { "name": "| 回车 | leaderf             |"},
            \ { "name": "| 双击 | leaderf             |"},
            \ { "name": "| f    | leaderf             |"},
            \ { "name": "| u    | svn update          |"},
            \ { "name": "| c    | svn commit          |"},
            \ { "name": "+======+=====================+"},
            \ { "name": "项目列表:                     "},
            \ { "name": "------------------------------"},
            \]

function! s:ProjectView()
    let FencWinNr=bufwinnr(s:ProjectWinName)
    if FencWinNr!=-1
        exec FencWinNr." wincmd w"
        exec "wincmd c"
        return
    endif
    let cmd = "topleft vertical 30 new " . s:ProjectWinName
    silent! execute cmd
    setlocal winfixwidth
    setlocal noswapfile
    setlocal buftype=nowrite
    setlocal bufhidden=delete
    setlocal nowrap
    setlocal foldcolumn=0
    setlocal nobuflisted
    setlocal nospell
    setlocal nonumber
    setlocal cursorline

    let project_count = 0
    let help_doc_count = 0
    for i in s:ProjectHelpDoc
        call append(project_count, i['name'])
        let project_count += 1
        let help_doc_count += 1
    endfor
    for i in g:proj_search
        if isdirectory(i['path'])
            call append(project_count, i['name'])
            let project_count += 1
        endif
    endfor
    
    setlocal readonly
    setlocal nomodifiable
    
    normal gg
    let lnum = 0
    while lnum < help_doc_count
        normal j
        let lnum += 1
    endwhile
    
    nnoremap <buffer> <CR>          :call <SID>ProjectLeaderf('f')<CR>
    nnoremap <buffer> <2-leftmouse> :call <SID>ProjectLeaderf('f')<CR>
    nnoremap <buffer> <silent> f    :call <SID>ProjectLeaderf('f')<CR>
    nnoremap <buffer> <silent> u    :call <SID>ProjectLeaderf('u')<CR>
    nnoremap <buffer> <silent> c    :call <SID>ProjectLeaderf('c')<CR>
endfunction


function! s:ProjectLeaderf(cmd)
    let _line=getline(line("."))
    let _fenc=substitute(_line,'\s.*$','',"g")
    let MainWinNr=winnr("#")
    if MainWinNr==0
        echohl Error | echomsg "Main window not found!" | echohl None
        return
    endif

    let MainWinNr=winnr("#")
    if MainWinNr==0
        echohl Error | echomsg "Main window not found!" | echohl None
        return
    endif
    exec MainWinNr." wincmd w"

    let dir = "./"
    for i in g:proj_search
        if i['name'] == _fenc
            let dir = i['path']
        endif
    endfor

    if a:cmd == 'f' 
        exec "Leaderf " . dir
    elseif a:cmd == 'u'
        exec "SVN update " . dir
    elseif a:cmd == 'c'
        exec "SVN commit " . dir
    endif
endfunction

command! -nargs=0 ProjectView call s:ProjectView()
