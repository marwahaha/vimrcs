
nnoremap <leader>tt :set operatorfunc=TestOperator<cr>g@
vnoremap <leader>tt :<c-u> :call TestOperator(visualmode())<cr>
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u> :call GrepOperator(visualmode())<cr>

function! TestOperator(type)
	if a:type ==? 'v' 
		silent execute "normal! `<v`>y"
	elseif a:type ==# 'char'
		silent execute "normal! `[v`]y"
	elseif a:type ==# 'line'
	else
		return
	endif
	echo @@
endfunction
function! GrepOperator(type)
	if a:type ==? 'v' 
		execute "normal! `<v`>y"
elseif a:type ==# 'char'
		execute "normal! `[v`]y"
	elseif a:type ==# 'line'
		execute "normal `[^v`]$y"
	endif
	echo @@
endfunction
