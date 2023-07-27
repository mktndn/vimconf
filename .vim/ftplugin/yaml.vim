" Syntax highlighting and validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" do not use cscope.
setlocal nocscopetag

" if has('win32')
" 	call ShellWin()
" endif
" 
" let b:ale_fixers = ['yamllint']
" let b:ale_yaml_yamllint_executable = 'c:\\Python36\\Scripts\\yamllint.exe'

setl tabstop=2
setl shiftwidth=2
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent


