" cmd.exe
" setlocal shell=c:\windows\SYSTEM32\cmd.exe
" setlocal shellcmdflag=/U\ /c\ chcp\ 65001\ \&\&
" setlocal noshellslash
" setlocal shelltemp
" setlocal shellxquote="\""

setlocal formatoptions=tqwn
setlocal autoindent
setlocal nocindent
setlocal nosmartindent

" for OutlookVim 13.0
setlocal encoding=utf-8
setlocal fileencodings=ucs-bom

setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal virtualedit=all
setlocal formatoptions=wnlM

let solarized_hitrail=0
let b:jpformat=0
nnoremap <LocalLeader>a :execute 'JpFormat' <bar>let b:jpformat=0<CR>
