let mapleader=' '

" quit/save
nnoremap <leader>q :q<ESC>
nnoremap <leader>qq :q!<ESC>
nnoremap <leader>w :w<ESC>
nnoremap <leader>wq :wq<ESC>
nnoremap <leader>ww :w!<ESC>
nnoremap <leader>tq :tabdo q<ESC>
nnoremap <leader>tw :tabdo w<ESC>
nnoremap <leader>twq :tabdo wq<ESC>
nnoremap <leader>bd :ls<ENTER>:bd 

"tabs and buf new
nnoremap <leader>tn :tabnew 
nnoremap <leader>bn :badd 

" tabmoves
nnoremap <leader>h gT
nnoremap <leader>l gt

" bufmoves
nnoremap <leader>j :bn<ENTER>
nnoremap <leader>k :bp<ENTER>
nnoremap <leader>bg :ls<ENTER>:b 

" splitmoves
nnoremap <leader>g <C-W>

" decoupe
augroup norme
autocmd!
autocmd Filetype c,h nnoremap K 80<bar>lBhr<ENTER>
augroup END


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


"some moves
nnoremap <leader>r /return<cr>:noh<ESC>

" Selection
vnoremap s i"
vnoremap S :normal! f"vi"<cr>
vnoremap f i{
vnoremap P i(
vnoremap s i"
vnoremap v <ESC>
vnoremap a <ESC>ggVG
onoremap a :normal! ggVG<cr>
onoremap S :normal! f"vi"<cr>
onoremap f i{
onoremap P i(

" new include
nnoremap <leader>i< yy1gtGkPA;<ESC>:echo "Line added to prototypes"<ENTER>
nnoremap <leader>ii 13GO#include 

"fold/unfold function 
nnoremap <leader>ff vi{zf
nnoremap <leader>fo zo

" commandmoves
cnoremap kk <UP>
cnoremap jj <DOWN>
cnoremap <C-H> <LEFT>
cnoremap <C-L> <RIGHT>
cnoremap <C-A> <kHome>
cnoremap <C-E> <kEnd>

" define search
map	 <leader>D yiw mak?<C-R>"<ESC>yy:echo "<C-R>""<ESC>`a


"remaps html

"close
augroup php_remaps
	autocmd!
	autocmd Filetype php nnoremap <leader>cc yypa/<ESC>wwhd$a><ESC>O
augroup End
augroup html_remaps
	autocmd!
	autocmd Filetype html nnoremap <leader>cc yypa/<ESC>wwhd$a><ESC>O
augroup End

" split les buffers en onglets a l'ouverture
nnoremap <leader>bt :tab sball<ESC>
