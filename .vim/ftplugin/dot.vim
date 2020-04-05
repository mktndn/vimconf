" Buffer settings.
setlocal grepprg=grep\ -nH\ $*
setlocal iskeyword+=:
setlocal formatoptions=mM
setlocal textwidth=78
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent

setlocal virtualedit=""
setlocal wrap
setlocal linebreak

setlocal makeprg=dot\ -Tpdf\ %\ -o%<.pdf\ 2>&1
