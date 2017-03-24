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

" autocmd
autocmd BufWrite .vimrc source $MYVIMRC
" split les buffers en onglets
autocmd VimEnter * bt :tab sball<CR>
