let g:quicktex_mysql = {
	\'db'        : "DATABASE ",
	\'database'  : "DATABASE ",
	\'dts'       : "DATABASES ",
	\'databases' : "DATABASEs ",
	\'tb'        : "TABLE ",
	\'table'     : "TABLE ",
	\'tbs'       : "TABLES ",
	\'tables'    : "TABLES ",
	\'cols'      : "COLUMNS ",
	\'columns'   : "COLUMNS ",
	\'use'       : "USE ",
	\'drop'      : "DROP ",
	\'show'      : "SHOW ",
	\'cr'        : "CREATE ",
	\'create'    : "CREATE ",
	\'sel'       : "SELECT ",
	\'select'    : "SELECT ",
	\'up'        : "UPDATE ",
	\'update'    : "UPDATE ",
	\'del'       : "DELETE ",
	\'delete'    : "DELETE ",
	\'ins'       : "INSERT ",
	\'insert'    : "INSERT ",
	\'desc'      : "DESC ",
	\'from'      : "FROM ",
	\'wh'        : "WHERE ",
	\'where'     : "WHERE ",
	\'set'       : "SET ",
	\'into'      : "INTO ",
	\'val'       : "VALUES ",
	\'values'    : "VALUES ",
	\'int'       : "INT ",
	\'char'      : "varchar(<+++>) <++>",
	\'as'        : "AS ",
\}

augroup mysql_gerais
	autocmd!
	"autocmd BufRead,BufNewFile *.R,*.r,*Rprofile set filetype=r
	autocmd FileType mysql set nowrap
	autocmd FileType mysql nnoremap <buffer> <localleader>, :SlimeSend1 ;<cr>
augroup END
