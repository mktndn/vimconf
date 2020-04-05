" Syntax highlighting and validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" do not use cscope.
setlocal nocscopetag

" " ALEFix does not work under bash.
" "
" if has('win32')
" 	setl shell=cmd.exe
" 	setl shellcmdflag=/c
" 	setl noshellslash
" endif
" 
" let b:ale_fixers = {'javascript': ['eslint']}

"
" " tern settings.
" setl completeopt=menu,popup,noinsert
" let b:tern_map_keys=1
" let b:tern_show_argument_hints='on_move'
" let b:tern_show_signature_in_pum=1
" 
" nnoremap <buffer> <LocalLeader>tD :TernDoc<CR>
" nnoremap <buffer> <LocalLeader>tb :TernDocBrowse<CR>
" nnoremap <buffer> <LocalLeader>tt :TernType<CR>
" nnoremap <buffer> <LocalLeader>td :TernDef<CR>
" nnoremap <buffer> <LocalLeader>tpd :TernDefPreview<CR>
" nnoremap <buffer> <LocalLeader>tsd :TernDefSplit<CR>
" nnoremap <buffer> <LocalLeader>ttd :TernDefTab<CR>
" nnoremap <buffer> <LocalLeader>tr :TernRefs<CR>
" nnoremap <buffer> <LocalLeader>tR :TernRename<CR>

setl tabstop=2
setl shiftwidth=2
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
setl noignorecase
