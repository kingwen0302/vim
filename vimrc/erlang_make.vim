function! ErlangMake()
    let cwd = getcwd()
    let my_work_dir = fnamemodify(findfile("Emakefile", ".;"), ":p:h")
    exe "lcd" my_work_dir
    let filename = strpart(expand("%:p"), strlen(my_work_dir."\\"))
    let filename = substitute(filename, '\\', '/', 'g')
    exe 'setlocal makeprg='.fnameescape('erl -pa '. my_work_dir . '/baseebin -pa '. my_work_dir . '/ebin -eval "make:files([\\\"' . filename . '\\\"])" -noshell -s init stop')
    exe 'setlocal errorformat='.fnameescape('%f:%l: %m,%f:%l: Warning: %m,')
    exe "make"
    exe "copen"
    exe "lcd" cwd
endfunction

command! -nargs=0 ErlangMake call ErlangMake()
