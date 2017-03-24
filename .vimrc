syntax on
set mouse=a
set ruler

" Theme
highlight Normal ctermfg=grey ctermbg=0
set cursorline
highlight CursorLine term=bold cterm=bold ctermbg=8
highlight StatusLine  ctermfg=53 ctermbg=82
set colorcolumn=81 
highlight ColorColumn ctermbg=55
highlight Visual guibg=Green term=bold cterm=bold ctermbg=22
set relativenumber 
highlight LineNr term=bold cterm=NONE ctermfg=22 ctermbg=0

" commandmoves
cnoremap kk <UP>
cnoremap jj <DOWN>

" JK to escape
inoremap jk <ESC>
cnoremap jk <ESC>

" copy to clipboard
vnoremap Y :w !pbcopy<ENTER><ENTER>:echo "Visual selection added to clipboard"<ENTER>
nnoremap YY V:w !pbcopy<ENTER><ENTER>:echo "Line added to clipboard"<ENTER>

" cacher derniere recherche
nnoremap // :noh<ESC>

" begin/end
nnoremap G Gzb
nnoremap gg ggzt


" reindenter et recentrer
nnoremap == gg=G``zz

" visual info
" vnoremap <C-g> g<C-g>

" Pagedown Pageup
nnoremap L Lzz
nnoremap H Hzz

" split les buffers en onglets
nnoremap bt :tab sball<CR>

" indentation en sortie d'insertion
""autocmd InsertLeave *.c normal ==
autocmd InsertEnter *.c normal zz

" autoindentation des commentaires C
augroup Comment-Commands
	autocmd!
	autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/
augroup END

"abbrevs
iabbrev @@ corentin34530@hotmail.fr
iabbrev fct function
iabbrev fcts functions
cabbrev src source $MYVIMRC

let mapleader=' '


"some moves
nnoremap <leader>r /return<cr>:noh<ESC>


" operators
onoremap s i"
onoremap S :normal! f"vi"<cr>
onoremap f i{
onoremap P i(
onoremap p :normal! f(vi(<cr>


nnoremap <leader>ap f)i, 
" new include
nnoremap <leader>i< yy1gtGkPA;<ESC>:echo "Line added to prototypes"<ENTER>
nnoremap <leader>ii 13GO#include 
nnoremap <leader>f vi{zf
nnoremap <leader>F zo
nnoremap <leader>h gT
nnoremap <leader>l gt
map	 <leader>D yiw mak?<C-R>"<ESC>yy:echo "<C-R>""<ESC>`a

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


" commands
command! Tq tabdo q
command! Tw tabdo w
command! Twq tabdo wq

set updatetime=1000
autocmd CursorMoved * set rnu nonumber
autocmd CursorHold * set number nornu
autocmd VimEnter * echo "Hello Maoow !"
autocmd BufWrite .vimrc source $MYVIMRC
