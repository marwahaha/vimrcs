
" commands
command! Tq tabdo q
command! Tw tabdo w
command! Twq tabdo wq

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
autocmd VimEnter * echo "Hello Maoow !"
autocmd BufWrite .vimrc source $MYVIMRC
