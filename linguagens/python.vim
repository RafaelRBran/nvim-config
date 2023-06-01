" Arquivo de configurações específicas para R
" Mapeamentos
augroup Python_gerais
		autocmd!
		"autocmd FileType python noremap  <buffer> <localleader>c :call ExecuteKeys("C-l")<cr>
		"autocmd FileType python noremap  <buffer> <localleader>x :call ExecuteKeys("C-c")<cr>
		"autocmd FileType python noremap  <buffer> <localleader>d :call ExecuteKeys("C-d")<cr>

		autocmd FileType python noremap  <buffer> ZW :w<cr>:call SendToTmux("python3 " .. expand("%"), 1)<cr>
augroup END
