setlocal formatoptions=qwnlMm1

" format numbered lists, bullet lists.
setlocal formatlistpat=^\\s*\\d\\\+\[\\\]\:\.\)\}\\t\ \]\\s*\\\|^\\s*\[\+\=\•\o\◆\–\]\ \\s*

setlocal nowrap
"setlocal autoindent
setlocal nocindent
setlocal nosmartindent

setlocal tabstop=4
" setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal virtualedit=all

" spelling
setlocal spelllang=en_us
nmap <localleader>sp :setlocal spell!<CR>

" justify using groff
vnoremap <localleader>jf :!groff -Tutf8 -mom<CR>

let b:solarized_hitrail=0

" one line JpFormat without side effect.
nnoremap <LocalLeader>a :execute 'JpFormat' <bar>let b:jpformat=0<CR>

" bullet list
nnoremap <LocalLeader>b :s/^/\ \ •\ /<bar>nohlsearch<CR>
"'<,'>s/^/  • /
