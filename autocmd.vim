" autoindentation des commentaires C
augroup Comment-Commands
	autocmd!
	autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/
augroup END

augroup syntax
	autocmd!
	autocmd Filetype c,cpp set syntax=c
	autocmd Filetype h set syntax=c
	autocmd Filetype c,cpp syntax on
	autocmd Filetype h syntax on
	autocmd TabEnter *.vim set syntax=vim
	autocmd TabEnter *.vim syntax on
augroup END

"abbrevs
iabbrev @@ corentin34530@hotmail.fr
cabbrev src source $MYVIMRC


augroup vimrc
	autocmd!
" autocmd
if @% == ""
execute "open " . $MYVIMRC
endif
	autocmd BufWrite .vimrc source $MYVIMRC
	autocmd BufWrite *.vim source $MYVIMRC
	autocmd VimEnter .vimrc set syntax=vim
	autocmd VimEnter .vimrc tabnew ~/vimrcs/theme.vim
	autocmd VimEnter .vimrc tabnew ~/vimrcs/remaps.vim
	autocmd VimEnter .vimrc tabnew ~/vimrcs/autocmd.vim
	autocmd VimEnter .vimrc tabnew ~/vimrcs/operators.vim
	autocmd VimEnter .vimrc tabnew ~/vimrcs/testfct.vim
"abbrevs
	autocmd FileType vim iabbrev fct function
"	autocmd FileType *.vimrc  set syntax=vim
	iabbrev fcts functions
augroup END
" split les buffers en onglets a l'ouverture
nnoremap bt :tab sball<ESC>
