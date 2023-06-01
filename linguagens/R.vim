" Arquivo de configurações específicas para R
" Úteis

		let g:quicktex_r = {
			\'..' : "\<space>%>%\<space>",
		\}
		"
" Mapeamentos
	augroup R_gerais
		autocmd!
		autocmd BufRead,BufNewFile *.R,*.r,*Rprofile set filetype=r
		"autocmd FileType r nnoremap  <buffer> <localleader>p :silent ! tmux new -t R -d -c . "R --no-save --quiet"<cr><Plug>SetTmuxVars
		autocmd FileType r nnoremap <buffer> <localleader>h :call HelpDoRPrompt()<CR>
		autocmd FileType r nnoremap <buffer> <localleader>, :SlimeSend1 lsx()<cr>
		autocmd FileType r noremap  <buffer> <localleader>l :SlimeSend1 system("clear")<cr>
		autocmd FileType r noremap  <buffer> <localleader>X :SlimeSend1 clear()<cr>
		autocmd FileType r noremap  <buffer> <localleader>gx :SlimeSend1 goff()<cr>
		autocmd FileType r noremap  <buffer> <localleader>d :SlimeSend1 q()<cr>
	augroup END

function! HelpDoRPrompt()
    call inputsave()
    let  l:command = input("Manual buscado: ")
    call inputrestore()
    exec 'SlimeSend1' 'manual("' . l:command . '")'
endfunction
