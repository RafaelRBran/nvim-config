" Arquivo de configurações específicas para arquivos csv

augroup csv
	autocmd!
	autocmd BufRead *.csv set nowrap
	autocmd BufRead *.csv set cursorline cursorcolumn
augroup END
