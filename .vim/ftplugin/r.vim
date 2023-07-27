let Rtools_path = 'C:\\Rtools'
" let R_term_cmd = 'Rterm --encoding=UTF-8"
let R_latexcmd = ['lualatex']
" let R_args = ['--encoding=UTF-8']
" let R_args = ['--no-save']

if has('win32')
	call ShellWin()
endif

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

