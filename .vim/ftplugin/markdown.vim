setlocal wrap
setlocal mp=pandoc\ %\ -s\ -o\ %:t:r.pdf\ --pdf-engine=lualatex
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'jsx=javascript', 'sass', 'xml', 'python']

:map <LocalLeader>h :!pandoc %:p -s --css c:\users\owner\styles\pandoc.css -o %:p:r.html<CR>
:map <LocalLeader>w :!pandoc %:p -s -o %:p:r.docx<CR>
:map <LocalLeader>s :!pandoc %:p -s -t revealjs --mathjax -o %:p:r.html<CR>
