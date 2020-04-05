" Syntax highlighting and validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" do not use cscope.
setlocal nocscopetag

" if has('win32')
" 	setl shell=cmd.exe
" 	setl shellcmdflag=/c
" 	setl noshellslash
" endif
" 
" let b:ale_fixers = {'json': ['fixjson', 'prettier']}

setl tabstop=2
setl shiftwidth=2
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent

