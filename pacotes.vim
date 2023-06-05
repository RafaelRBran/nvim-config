" Plugins para usar com o nvim
" TODO
	" Configurar a barra

" Definindo
	call plug#begin('~/.config/nvim/plugged')
		" Editor em geral
			Plug 'tpope/vim-sensible' " Configurações 'básicas' para vim
			Plug 'tpope/vim-surround' " Objetos ao redor
			Plug 'tpope/vim-repeat'   " O . funciona para plugins
			Plug 'godlygeek/tabular'  " Alinha textos com :Tabularise \=
			Plug 'brennier/quicktex'  " Defaults rápidos
			"Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
		
		" Navegação
			Plug 'jeetsukumaran/vim-buffergator' " Abre lista de buffers com <leader>b
			Plug 'scrooloose/nerdtree'           " Explorador de arquivos
		
		" Aparência
			" Barra
			"Plug 'itchyny/lightline.vim'         " Deixa a barra inferior bonitinha
			Plug 'vim-airline/vim-airline'        " Deixa a barra inferior bonitinha
			Plug 'vim-airline/vim-airline-themes' " Deixa a barra inferior bonitinha
			
			" Temas
			"Plug 'mhartington/oceanic-next'   " OceanicNext
			"Plug 'nlknguyen/papercolor-theme' " Papercolor
			"Plug 'dracula/vim'                " dracula
			"Plug 'sickill/vim-monokai'        " monokai
			Plug 'arcticicestudio/nord-vim'   " nord
			Plug 'jpo/vim-railscasts-theme'   " railscasts
			
			" Cores
			Plug 'junegunn/goyo.vim'
			Plug 'luochen1990/rainbow' " Parênteses coloridos
			Plug 'ap/vim-css-color'    " Pinta os códigos hexadecimais #503fa9
				" vim-hexokinase
		
		" Integração com o tmux
			"Plug 'ChHaeni/vimtux'
			"Plug 'christoomey/vim-tmux-navigator'
			"Plug 'tpope/vim-tbone'
			Plug 'jpalardy/vim-slime'
		
		" Integração com git
			Plug 'tpope/vim-fugitive'
			Plug 'junegunn/gv.vim'
			" gitgutter
			" vim-table-mode (para escrever tabelas no README.md)
	call plug#end()
	
" Configurando (arquivos de linguagens podem conter parte das configurações)
	" Buffergator
		let g:buffergator_suppress_keymaps = 1
		nnoremap <leader>b :BuffergatorOpen<cr>
		nnoremap gb :BuffergatorMruCyclePrev<cr>
		nnoremap gB :BuffergatorMruCycleNext<cr>

	" CoC
		" procurar arquivos de configuração no github
	
	" Goyo
		nnoremap <leader>G :Goyo<cr>
		let g:goyo_width = '75%'
	
	" NERDTree
		nnoremap <leader>ef :NERDTreeToggle .<cr>
		nnoremap <leader>ee :NERDTreeToggle ~/.config/nvim<cr>
		
		let NERDTreeQuitOnOpen=1 " Fecha o nerdTree quando abro um arquivo
	
	" rainbow
		let g:rainbow_active = 1
	
	" repeat
		"silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
		
	" slime
		let g:slime_target = "tmux"
		let g:slime_no_mappings = 0
		let g:slime_default_config = {"socket_name": "default", "target_pane": "R:1.1"}
		
		nnoremap <leader>p :SlimeConfig<cr>
		nnoremap <leader>t :SlimeSend1 
		nnoremap <Tab>   :SlimeSendCurrentLine<cr>j
		nnoremap <Tab>   <Plug>SlimeLineSendj
		nnoremap <S-Tab> <Plug>SlimeMotionSend
		xnoremap <Tab>   <Plug>SlimeRegionSend
	
	" fugitive + gv.vim
		nnoremap <leader>gg :w<cr>:G 
		nnoremap <leader>gv :GV --branches .<cr>
	
