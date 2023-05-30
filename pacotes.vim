" Plugins para usar com o nvim

" Definindo
	call plug#begin('~/.config/nvim/plugged')
		" Editor em geral
		Plug 'tpope/vim-surround'            " Objetos ao redor
		Plug 'itchyny/lightline.vim'         " Deixa a barra inferior bonitinha
		Plug 'godlygeek/tabular'             " Alinha textos com :Tabularise \=
		Plug 'jeetsukumaran/vim-buffergator' " Abre lista de buffers com <leader>b
		Plug 'scrooloose/nerdtree'           " Explorador de arquivos
		
		" Temas
		Plug 'dracula/vim'
		Plug 'arcticicestudio/nord-vim'
		Plug 'sickill/vim-monokai'
		Plug 'jpo/vim-railscasts-theme'
		Plug 'mhartington/oceanic-next'
		Plug 'nlknguyen/papercolor-theme'
		
		" Aparência/cores
		Plug 'junegunn/goyo.vim'
		Plug 'luochen1990/rainbow' " Parênteses coloridos
		Plug 'ap/vim-css-color'    " Pinta os códigos hexadecimais #503fa9
		
		" Integração com o tmux
		Plug 'ChHaeni/vimtux'
		"Plug 'christoomey/vim-tmux-navigator'
		
		" Linguagens
		Plug 'brennier/quicktex'  " latex rápido
		Plug 'tpope/vim-fugitive' " Integração com git
		
		" Testar depois
		Plug 'tpope/vim-repeat'
		"Plug 'tpope/vim-tbone'
		Plug 'jpalardy/vim-slime'
		Plug 'junegunn/gv.vim'
		"Plug 'gregsexton/gitv', {'on': ['Gitv']}
	call plug#end()

" Configurando (arquivos de linguagens podem conter parte das configurações)
	" Buffergator
		let g:buffergator_suppress_keymaps = 1
		nnoremap <leader>b :BuffergatorOpen<cr>
		nnoremap gb :BuffergatorMruCyclePrev<cr>
		nnoremap gB :BuffergatorMruCycleNext<cr>
		
	" Goyo
		nnoremap <leader>G :Goyo <cr>
		let g:goyo_width = '75%'
	
	" lightline
		let g:lightline = {
			\ 'colorscheme': 'solarized',
			\}
	
	" NERDTree
		nnoremap <leader>f :NERDTreeToggle .<cr>
		nnoremap <leader>ee :NERDTreeToggle ~/.config/nvim<cr>
		nnoremap <leader>er :e ~/.config/nvim/plugged/vimtux/plugin/vimtux.vim<cr>
		let NERDTreeQuitOnOpen=1 "Fecha quando abro um arquivo
	
	" rainbow
		let g:rainbow_active = 1
	
	" fugitive + gv.vim
		nnoremap <leader>gg :w<cr>:G 
		nnoremap <leader>gv :GV --branches .<cr>
	
	" tbone
		"map <silent> <Plug>TmuxEnter :call system('tmux send-keys -t ' . g:tbone_write_pane . ' Enter')<cr>
		"map <silent> <Plug>TmuxCu    :call system('tmux send-keys -t ' . g:tbone_write_pane . ' c-u')<cr>
		"map <silent> <Plug>TmuxCl    :call system('tmux send-keys -t ' . g:tbone_write_pane . ' c-l')<cr>
		"map <silent> <Plug>TmuxCc    :call system('tmux send-keys -t ' . g:tbone_write_pane . ' c-c')<cr>
		"map <silent> <Plug>TmuxCd    :call system('tmux send-keys -t ' . g:tbone_write_pane . ' c-d')<cr>
		
		"nnoremap <leader>t :Twrite 
		"nnoremap <silent> <Tab> <Plug>TmuxCu:Twrite<cr><Plug>TmuxEnterj
		"noremap <silent> <Tab> <Plug>TmuxCu:'<,'>Twrite<cr><Plug>TmuxEnter
	
	" vim-tmux-navigator
		"let g:tmux_navigator_no_mappings = 1
