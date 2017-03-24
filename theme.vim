syntax on
set mouse=a
set ruler

" Theme
autocmd VimEnter * echo "Hello Maoow !"
set colorcolumn=81 
set cursorline
highlight Normal ctermfg=grey ctermbg=0
highlight CursorLine term=bold cterm=bold ctermbg=8
highlight StatusLine  ctermfg=53 ctermbg=82
highlight ColorColumn ctermbg=55
highlight Visual guibg=Green term=bold cterm=bold ctermbg=22
highlight LineNr term=bold cterm=NONE ctermfg=22 ctermbg=0
highlight Folded ctermfg=22 ctermbg=0
highlight WildMenu guibg=Green ctermfg=22 ctermbg=0
 


" autocmd
set cmdheight=2
set updatetime=1000
autocmd CursorMoved * set rnu nonumber
autocmd CursorHold * set number nornu


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


