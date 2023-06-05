let g:quicktex_mysql = {
	\'db'        : "DATABASE ",
	\'dbs'       : "DATABASES ",
	\'tb'        : "TABLE ",
	\'tbs'       : "TABLES ",
	\'cols'      : "COLUMNS ",
	\'cr'        : "CREATE ",
	\'sel'       : "SELECT ",
	\'up'        : "UPDATE ",
	\'del'       : "DELETE ",
	\'ins'       : "INSERT INTO <+++> (<++>) VALUES (<++>);",
	\'val'       : "VALUES ",
	\'char'      : "VARCHAR(<+++>) <++>",
	\'sf'        : "SELECT <+++> FROM <++>;",
	\'sfw'       : "SELECT <+++> FROM <++> WHERE <++>;",
	\'ob'        : "ORDER BY ",
	\'obd'       : "ORDER BY <+++> DESC <++>",
	\'gb'        : "GROUP BY ",
	\'lim'       : "LIMIT ",
	\'!like'     : "NOT LIKE ",
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
