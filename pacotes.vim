" Plugins para usar com o nvim
" TODO
	" CoC
		" https://www.youtube.com/watch?v=qV2sqVtElLk&list=PLRjzjpJ02WDMJOTsrdByXynk8h0ScMK9R&index=4 
		" https://www.youtube.com/watch?v=6EWpGrj2Wes
	" Integração com git
		" gitgutter
		" vim-fugitive
		" Deve ter uma forma de ver a árvore de commits
	" Integração com Tmux
		" jpalardy/vim-slime
	" multi cursors
	" vim-table-mode
	" ranger ou outros navegadores
	" Configurar a barra
		" Integração com nerdtree
		" Integração com fugitive

" Definindo
	call plug#begin('~/.config/nvim/plugged')
		" Editor em geral
			Plug 'tpope/vim-sensible' " Configurações 'básicas' para vim
			Plug 'tpope/vim-surround' " Objetos ao redor
			Plug 'godlygeek/tabular'  " Alinha textos com :Tabularise \=
			Plug 'brennier/quicktex'  " Defaults rápidos
		
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
		
		" Testar depois
			"Plug 'tpope/vim-repeat'
	call plug#end()
	
" Configurando (arquivos de linguagens podem conter parte das configurações)
	" Buffergator
		let g:buffergator_suppress_keymaps = 1
		nnoremap <leader>b :BuffergatorOpen<cr>
		nnoremap gb :BuffergatorMruCyclePrev<cr>
		nnoremap gB :BuffergatorMruCycleNext<cr>
	
	" Goyo
		nnoremap <leader>G :Goyo<cr>
		let g:goyo_width = '75%'
	
	" NERDTree
		nnoremap <leader>f :NERDTreeToggle .<cr>
		nnoremap <leader>ee :NERDTreeToggle ~/.config/nvim<cr>
		nnoremap <leader>er :e ~/.config/nvim/plugged/vimtux/plugin/vimtux.vim<cr>
		
		let NERDTreeQuitOnOpen=1 " Fecha o nerdTree quando abro um arquivo
	
	" rainbow
		let g:rainbow_active = 1
	
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
	
	
