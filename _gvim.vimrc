syntax on
set number
set rnu
set mouse=a
" eclairer la ligne actuelle
set cursorline
highlight CursorLine guibg=Green term=bold cterm=bold ctermbg=22
" eclairer la colonne 80
highlight ColorColumn ctermbg=93
highlight Normal ctermbg=0
set colorcolumn=81 
" JK to escape
inoremap jk <ESC>
cnoremap jk <ESC>
" cacher derniere recherche
nnoremap // :noh<ESC>
" reindenter et recentrer
nnoremap == gg=G``zz

" Bot Top
nnoremap gg ggzt
nnoremap G Gzb

" pgup pgdown
nnoremap L Lzz
nnoremap H Hzz

cnoremap kk <UP>
cnoremap jj <DOWN>



" split les buffers en onglets
nnoremap bt :tab sball<CR>
" autoindentation des commentaires C
augroup Comment-Commands
autocmd!
autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/ "Change the comments auto format - for 42 norm
augroup END


" abbr

iabbrev @@ corentin34530@hotmail.fr
iabbrev fct function
iabbrev fcts functions
cabbrev src source $MYVIMRC

let mapleader=' '


"some moves
nnoremap <leader>r /return<cr>


" operators
onoremap s i"
onoremap S :normal! f"vi"<cr>
onoremap f i{
onoremap P i(
onoremap p :normal! f(vi(<cr>


nnoremap <leader>ap f)i, 
nnoremap <leader>II 1GO#include 

" will need a function 
"nnoremap <leader>cp F,i, 

"tests functions  
"
"!function Test(test)
"	echom "yo "
"	echom a:test
"	echom "\n"
"endfunction
"




