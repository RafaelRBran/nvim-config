" Arquivo de configurações específicas para R
" Úteis

":call ExecuteKeys("M-C-j")<cr>
"autocmd FileType r nnoremap <buffer> <Tab> :call ExecuteKeys("C-u")<cr><Plug>NormalModeSendToTmuxj
" Mapeamentos
	augroup R_gerais
		autocmd!
		autocmd BufRead,BufNewFile *.R,*.r,*Rprofile set filetype=r
		autocmd FileType r nnoremap  <buffer> <localleader>p :silent ! tmux new -t R -d -c . "R --no-save --quiet"<cr><Plug>SetTmuxVars
		autocmd FileType r nnoremap  <buffer> <localleader>P <Plug>SetTmuxVars

		autocmd FileType r vnoremap <buffer> <Tab> <Plug>SendSelectionToTmux
		autocmd FileType r nnoremap <buffer> <Tab> :call ExecuteKeys("C-u")<cr><Plug>NormalModeSendToTmuxj
		autocmd FileType r nnoremap <buffer> <S-Tab> <Plug>NormalModeSendToTmuxMotion
		autocmd FileType r noremap  <buffer> <localleader>t :Tmux 
		"autocmd FileType r vnoremap <buffer> <localleader>h HelpDoRPrompt(@")<CR>
		autocmd FileType r nnoremap <buffer> <localleader>h :call HelpDoRPrompt()<CR>

		autocmd FileType r nnoremap <buffer> <localleader>, :Tmux lsx()<cr>
		autocmd FileType r noremap  <buffer> <localleader>c :call ExecuteKeys("C-l")<cr>
		autocmd FileType r noremap  <buffer> <localleader>x :call ExecuteKeys("C-c")<cr>
		autocmd FileType r noremap  <buffer> <localleader>X :Tmux clear()<cr>
		autocmd FileType r noremap  <buffer> <localleader>gx :Tmux goff()<cr>
		autocmd FileType r noremap  <buffer> <localleader>d :call ExecuteKeys("C-d")<cr>
	augroup END

	augroup R_atalhos
		autocmd!
		autocmd FileType r inoremap  <buffer> <localleader>\ <space>%>%<space>
	augroup END

function! HelpDoR_simples()
    call inputsave()
    let  l:comando = input("Manual buscado: ")
    call inputrestore()

    call system("tmux split-window -h -t " . g:tbone_write_pane . " 'Rscript -e \"help(" . l:comando . ", commandArgs(T))\" \"base\" \"grDevices\" \"stats\" \"graphics\" \"dplyr\" \"tidyr\" \"purrr\" \"readr\" \"quantreg\"'")
endfunction