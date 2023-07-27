" encoding for Python source (UTF-8)
setl encoding=utf-8

if has('win32')
	setl shell=cmd.exe
	setl shellcmdflag=/c
	setl noshellslash
endif

" setl shell=bash
" setl shellcmdflag=--rcfile\ /d/msys32/etc/profile\ -c
" setl shellslash

" utf-8で日本語メッセージが文字化けするので英語にする
" let $LANG='C'

" Syntax highlighting and validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" do not use cscope.
setl nocscopetag

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
"let g:solarized_hitrail=1    "default value is 0

" PEP 8 Indent rule
setl tabstop=4
"setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
setl cinwords=if,elif,else,for,while,try,except,finally,def,class,with
setl textwidth=80
setl colorcolumn=80 " from vim7.3

" Folding
setl foldmethod=indent
setl foldlevel=99

" ==========================================================
" Supportive Plugins
" ==========================================================
" " ALE
" let b:ale_fixers = ['autopep8']
" 
" " Pydoc
" "    Opens up pydoc within vim
" if has("win32")
" 	let g:pydoc_cmd = "py -m pydoc"
" elseif has("unix")
" 	let g:pydoc_cmd = "python3 -m pydoc"
" endif
" map <leader>pd <Esc>:Pydoc

" " Py.test
" "    Run py.test test's from within vim
" "
" " py.testを使うときにユーザーモジュールをimportしていると
" " import errorになる件
" function! Pfpath()
" 	:let $PYTHONPATH=expand("%:p:h")
" endfunction
" "	nmap <Leader>pf <Esc>:Pytest file<CR>
" "	nmap <Leader>pc <Esc>:Pytest class<CR>
" "	nmap <Leader>pm <Esc>:Pytest method<CR>
" "	nmap <Leader>ps <Esc>:Pytest session<CR>
" nmap <Leader>pf <Esc>:call Pfpath()<Bar>Pytest file verbose<CR>
" nmap <Leader>pc <Esc>:call Pfpath()<Bar>Pytest class verbose<CR>
" nmap <Leader>pm <Esc>:call Pfpath()<Bar>Pytest method verbose<CR>
" nmap <Leader>ps <Esc>:call Pfpath()<Bar>Pytest session verbose<CR>
" 
" nmap <Leader>pf :Pytest file verbose<CR>
" nmap <Leader>pc :Pytest class verbose<CR>
" nmap <Leader>pm :Pytest method verbose<CR>
" nmap <Leader>ps :Pytest session verbose<CR>


" Completion and Documentation
" jedi
" -> jedi is not filetype plugin. written in .vimrc
" let b:SuperTabDefaultCompletionType = "context"
" setl completeopt=menuone,longest,preview

"" working ipython3 window.
" nmap <leader>ip :ConqueTermVSplit ipython3<CR>

python3 << EOL
import vim
def EvaluateCurrentRange():
    eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
" Evaluate the selected range.
vnoremap <buffer> <silent> <Leader>ev :py EvaluateCurrentRange()<CR>
