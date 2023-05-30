" Arquivo de configurações específicas para R
" Mapeamentos
augroup Python_gerais
		autocmd!
		autocmd FileType python nnoremap <buffer> <localleader>p :silent ! tmux new -t R -d -c . "python3"<cr><Plug>SetTmuxVars
		autocmd FileType python nnoremap  <buffer> <localleader>P <Plug>SetTmuxVars

		autocmd FileType python vnoremap <buffer> <Tab> <Plug>SendSelectionToTmux
		autocmd FileType python nnoremap <buffer> <Tab> :call ExecuteKeys("C-u")<cr><Plug>NormalModeSendToTmuxj
		autocmd FileType python nnoremap <buffer> <S-Tab> <Plug>NormalModeSendToTmuxMotion
		autocmd FileType python noremap  <buffer> <localleader>t :Tmux 

		autocmd FileType python noremap  <buffer> <localleader>c :call ExecuteKeys("C-l")<cr>
		autocmd FileType python noremap  <buffer> <localleader>x :call ExecuteKeys("C-c")<cr>
		autocmd FileType python noremap  <buffer> <localleader>d :call ExecuteKeys("C-d")<cr>

		autocmd FileType python noremap  <buffer> ZW :w<cr>:call SendToTmux("python3 " .. expand("%"), 1)<cr>
augroup END
