" General matters.
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'

" OS specific environments.
if has("win32")

	" Compilation
	let g:Tex_CompileRule_dvi = 'latex -synctex=1 -src-specials -interaction=nonstopmode -include-directory=%:p:h $*'
	let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
	" let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -src-specials -interaction=nonstopmode -include-directory=%:p:h $*'
	" let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -src-specials -interaction=nonstopmode $*'
	let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 -interaction=nonstopmode $*'

	" Viewing
	
	" setting for SumatraPDF is written in its config file.
	" sumatrapdf.exe has to be in $PATH fow windows
	let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance'
	" SumatraPDF side:
	" -inverse-search "D:\msys32\home\skimura\bin\vim\vim81\gvim.exe" --remote %f ++%l

	"setlocal shell=c:\windows\system32\cmd.exe
	"setlocal shellcmdflag=/c
	"setlocal noshellslash
	"setlocal shelltemp
	" verbose set shell? shellslash? shellcmdflag? shellquote? shellxquote? shellxescape?

elseif has("unix")

	" Compilation
	let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
	let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 $*'


	" Viewing
	let g:Tex_ViewRule_pdf = 'qpdfview --unique'
	" Qpdfview side: 
	" settings -> behavior -> Source editor: 
	" 'gvim --remote +%2 %1 --servername gvim'
	
	"let g:Tex_ViewRule_pdf = 'qpdfview --unique %e.pdf\#src:%f:0:0'
	"let g:Tex_ViewRuleComplete_pdf = 'qpdfview --unique %:p:s?tex?pdf?\#src:%:p:t\:0:0 &'
	
	" There seems no easy way from vim to pass line number as argument.
	" nnoremap <leader><F3> :execute ":!qpdfview --unique %:p:s?tex?pdf?\\#src:%:p:t\:" . line('.'). ":0"<CR>

endif


filetype plugin indent on

" Buffer settings.
setlocal grepprg=grep\ -nH\ $*
setlocal iskeyword+=:
setlocal formatoptions=mM
setlocal textwidth=76
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal nocindent
setlocal smartindent

setlocal virtualedit=""
setlocal wrap
setlocal linebreak
setlocal foldmethod=indent 
setlocal spell spelllang=en_us

" Surround for inline equation. use "!" to surround.
let g:surround_33 = "\\(\r\\)"

:call IMAP('FD', '\[ <++> \]<++>', 'tex') 
:call IMAP('DF', '\( <++> \)<++>', 'tex')
