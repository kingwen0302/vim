function! MyErlangTags()
    call SetProjectRoot()
    let g:erlang_tags_otp = 1
    let g:erlang_tags_outfile = g:project_root . "/vim_tags"
    :ErlangTags
endfunction

command! -nargs=0 MyErlangTags call MyErlangTags()
if has('job') 
    autocmd BufWritePost *.erl  call MyErlangTags() 
    autocmd BufWritePost *.hrl  call MyErlangTags()
endif
