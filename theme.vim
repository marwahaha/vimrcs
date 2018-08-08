syntax on
set mouse=a
set ruler
set showmatch
set incsearch
set hlsearch

set numberwidth=5
" Theme
autocmd VimEnter * echo "Hello Maoow !"
set colorcolumn=81 
set cursorline
	highlight Tabline ctermbg=22 ctermfg=7
	highlight TablineSel ctermbg=28 ctermfg=15

	highlight Normal ctermfg=grey ctermbg=0
	highlight CursorLine term=bold cterm=bold ctermbg=8
	highlight StatusLine  ctermfg=53 ctermbg=82
	highlight ColorColumn ctermbg=55
	highlight Visual guibg=Green term=bold cterm=bold ctermbg=22 
	highlight LineNr guifg=Green term=bold cterm=NONE ctermfg=22 ctermbg=0
	highlight Folded ctermfg=2 ctermbg=52
	highlight WildMenu guibg=Green ctermfg=22 ctermbg=0
	highlight Tabline ctermbg=0 ctermfg=82
	highlight TablineSel ctermbg=0 ctermfg=10

" autocmd
set cmdheight=2
set updatetime=1000
set number relativenumber
augroup numbercolumn
	autocmd!
	"autocmd CursorMoved * set rnu nonumber
	"autocmd CursorHold * set number nornu
augroup END


"Statusline with column number
set statusline=%f  " File Name
set statusline+=\  " Separator
set statusline+=%y " Filetype
set statusline+=\  " Separator
set statusline+=%m " If file is modified since last write
set statusline+=%= " Right side
set statusline+=%l\ "Line number/Number of lines in file
set statusline+=\/\ " Separator
set statusline+=%c 


