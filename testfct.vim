cnoremap np call NewProject("","libft", 0)<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>


function! NewMakefile(name, isnewproject)
	tabnew Makefile
	execute "Stdheader"
	normal oNAME=
	execute "normal a" . a:name
	normal oSRC_PATH=srcs/
	normal oSRC_NAME=
	normal ma
	let srcnameline=line('.')
	if !a:isnewproject
		"execute "r !ls srcs/*.c"
		""simulate ls
		normal osrcs/test.c
		normal osrcs/test2.c
		let srcnameendline=line('.')
		normal `a

		while srcnameline < srcnameendline
			normal J
			let srcnameendline -= 1
		endwhile
	else
		execute "normal A" . a:name . ".c"
	endif
	normal oOBJ_PATH=obj/
endfunction

function! NewHeader(name, lib)
	execute "tabnew " . a:name . ".h" 
	execute "Stdheader"
	"simulate head
	"normal i###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o
	execute "normal I" . a:name . "_H"
	normal VU
	execute "normal I#ifndef "
	execute "normal o" . a:name . "_H"
	normal VU
	execute "normal I# define "
	normal o#endif
	normal O
	normal o# include "
	execute "normal A" . a:lib . "\""
	normal o
	normal o
	normal o
	normal O
endfunction
function! NewSource(name, ismain)
	execute "tabnew srcs/" . a:name . ".c"
	""normal <F1>
	"simulate head
	execute "Stdheader"
	"normal i###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o###
	"normal o
	execute "normal I#include \"../includes/" . a:name . ".h\""
	normal o
	normal o
	if a:ismain
		normal Iint main(void)
		normal o{
		normal o}
		normal Oreturn (0);
		normal O
		normal O
	endif
endfunction
function! NewProject(name, lib, program)
	!mkdir srcs includes
	call NewHeader(a:name, a:lib)
	call NewMakefile(a:name, 1)
	call NewSource(a:name, a:program)

endfunction
