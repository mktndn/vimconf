setlocal wrap
setlocal makeprg=pandoc\ %\ -s\ -o\ %:t:r.pdf\ --pdf-engine=lualatex
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal nospell

" if has('win32')
" 	setl shell=cmd.exe
" 	setl shellcmdflag=/c
" 	setl noshellslash
" endif
" 
" let b:ale_linters = ['mdl']
" let b:ale_fixers = ['prettier']

" Markdown
let g:markdown_fenced_languages = [ 'bash=sh', 'cs', 'css', 'erb=eruby', 'html', 'javascript', 'js=javascript', 'json',  'python', 'sass', 'vim', 'xml', ]

:map <LocalLeader>h :!pandoc %:p -s -t html5 --css %AppData%\pandoc\styles\github.css -o %:p:r.html<CR>
:map <LocalLeader>w :!pandoc %:p -s -o %:p:r.docx<CR>
:map <LocalLeader>s :!pandoc %:p -s -t revealjs --mathjax -o %:p:r.html<CR>
