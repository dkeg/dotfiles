execute		pathogen#infect()

nnoremap	<F1>		<nop>
nnoremap	Q		<nop>
nnoremap	K		<nop>
nnoremap	Y		y$
nmap		t		:tabnew<CR>
map		<F7>		:tabprev<CR>
map		<F8>		:tabnext<CR>
command		Wq		:wq
command		WQ		:wq
"imap		<tab>		<c-x><c-O>

syntax		on
colorscheme	jellybeans
let		g:jellybeans_background_color_256 = "191919"
let		g:NERDTreeWinPos = "right"

set		listchars=tab:\ \ 
set		t_Co=8
set		shortmess+=I
set		wildmode=longest,list
set		ttyfast
set		noswapfile
set		backspace=2
set		backspace=indent,eol,start
set		history=50
set		list
set		ruler
set		autoindent
set		showcmd
set		noshowmode
set		encoding=utf-8
set		scrolloff=5
set		autochdir
set		hlsearch
set		smarttab
set		showtabline=2
"set		number
"set		omnifunc=syntaxcomplete#Complete

filetype		on
filetype	plugin	on
filetype	indent	on

if		&term == "rxvt-unicode-256color"
set		listchars=tab:\┆\ 
set		t_Co=256
endif
if		&term == 'vt220'
set		listchars=tab:\ \ 
endif

hi		TabLine ctermbg=236 ctermfg=239
hi		TabLineSel ctermbg=236 ctermfg=242
hi		TabLineFill ctermbg=236
hi		Normal ctermbg=none
