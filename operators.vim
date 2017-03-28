
nnoremap <leader>fd :set operatorfunc=FindDefineOperator<cr>g@
vnoremap <leader>fd :<c-u> :call FindDefineOperator(visualmode())<cr>
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
echo test

endfunction

function! FindDefineOperator(type)
"" save the clipboard
	let tmp = @@
"" save the tab
	let actualtab=tabpagenr()
	if a:type ==? 'v' 
		silent execute "normal! `<v`>y"
	elseif a:type ==# 'char'
		silent execute "normal! `[v`]y"
	else
		return
	endif
	normal 1gt

	silent execute "normal /" . @@ . "\<ENTER>"
	execute "normal yy"
"" go back to the tab
	silent execute "normal! " . actualtab . "gt"
	echo @@
"" reset the clipboard
	silent let @@ = tmp

endfunction

function! GrepOperator(type)

"" save the clipboard
	let tmp = @@

	if a:type ==? 'v' 

		execute "normal! `<v`>y"

	elseif a:type ==# 'char'

		execute "normal! `[v`]y"

	elseif a:type ==# 'line'

		execute "normal `[^v`]$y"

	endif

	silent execute"grep! -R " . shellescape(@@) . " ."

"" reset the clipboard
	let @@ = tmp
endfunction
