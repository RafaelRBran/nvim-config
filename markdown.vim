" mapeamentos
	augroup Markdown_gerais
		autocmd!
		autocmd FileType markdown set mouse=a
		autocmd FileType markdown inoremap <buffer> jk <ESC>/<+*><CR>cf>
		autocmd FileType markdown inoremap <buffer> kj <++>
		" Compilar
		autocmd FileType markdown nnoremap <buffer> <localleader>r :w<cr>:! pandoc -o %:r.html %<cr>
		" Preview
		autocmd FileType markdown nnoremap <buffer> <localleader>p :w<cr>:! firefox %:r.html &<cr><cr>
		autocmd FileType markdown nnoremap <buffer> ZW :w<cr>:! pandoc -o %:r.html % &> /dev/null <cr><cr>
	augroup END
