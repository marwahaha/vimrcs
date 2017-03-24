


let mapleader=' '


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


"some moves
nnoremap <leader>r /return<cr>:noh<ESC>


" operators
onoremap s i"
onoremap S :normal! f"vi"<cr>
onoremap f i{
onoremap P i(
onoremap p :normal! f(vi(<cr>


" new include
nnoremap <leader>i< yy1gtGkPA;<ESC>:echo "Line added to prototypes"<ENTER>
nnoremap <leader>ii 13GO#include 
nnoremap <leader>f vi{zf
nnoremap <leader>F zo
nnoremap <leader>h gT
nnoremap <leader>l gt
map	 <leader>D yiw mak?<C-R>"<ESC>yy:echo "<C-R>""<ESC>`a
