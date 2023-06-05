let g:quicktex_mysql = {
	\'db'        : "DATABASE ",
	\'database'  : "DATABASE ",
	\'dbs'       : "DATABASES ",
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
	\'ins'       : "INSERT INTO <+++> (<++>) VALUES (<++>);",
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
	\'sf'        : "SELECT <+++> FROM <++>;",
	\'sfw'       : "SELECT <+++> FROM <++> WHERE <++>;",
	\'ob'        : "ORDER BY ",
	\'obd'       : "ORDER BY <+++> DESC <++>",
	\'gb'        : "GROUP BY ",
	\'limit'     : "LIMIT ",
	\'lim'       : "LIMIT ",
	\'like'      : "LIKE ",
	\'!like'     : "NOT LIKE ",
	\'not'       : "NOT ",
	\'and'       : "AND ",
	\'or'        : "OR ",
	\'between'   : "BETWEEN ",
	\'cwte'      : "CASE WHEN <+++> THEN <++> ELSE <++> END AS <++>",
\}

augroup mysql_gerais
	autocmd!
	"autocmd BufRead,BufNewFile *.R,*.r,*Rprofile set filetype=r
	autocmd FileType mysql set nowrap
	autocmd FileType mysql inoremap <buffer> jk <ESC>/<+*><CR>cf>
	autocmd FileType mysql inoremap <buffer> kj <++>
	autocmd FileType mysql nnoremap <buffer> <localleader>, :SlimeSend1 ;<cr>
	autocmd FileType mysql nnoremap <buffer> <localleader>' :SlimeSend1 '<cr>
	autocmd FileType mysql nnoremap <buffer> <silent> <localleader>b :! firefox https://dev.mysql.com/doc/refman/8.0/en/<cr>
augroup END

set expandtab  " Não substitui tabs por espaços
set tabstop=4    " Quantos espaços um tab deve ter?
set shiftwidth=4 " Espaços em um shift (tab a cada tabstop e espaços no resto)
