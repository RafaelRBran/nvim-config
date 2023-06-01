" Este arquivo contém as configurações iniciais do nvim

" Pacotes
	exec 'source' '~/.config/nvim/pacotes.vim'
	
" Linguagens e tipos de arquivo
	exec 'source' '~/.config/nvim/linguagens/csv.vim'
	exec 'source' '~/.config/nvim/linguagens/latex.vim'
	exec 'source' '~/.config/nvim/linguagens/markdown.vim'
	exec 'source' '~/.config/nvim/linguagens/R.vim'
	exec 'source' '~/.config/nvim/linguagens/python.vim'
		
" Vim básico (para mais opções, veja ":help option-list" e ":options")
	 "Cores
		colorscheme railscasts " Muda o esquema de cores.
		
	" Janelas
	set splitbelow splitright
	
	" Editor
		" Número da linha
			set number          " Coloca a régua de números à esquerda
			"set relativenumber " Régua relativa
			
		" Quebra de linha
			set textwidth=75 " O número de caracteres (colunas) de uma linha. Apesar de não ter efeito visível por outras opções, atua no gq{motion}
			set wrap        " Quebra as linhas visualmente
			set lbr         " Quebra as linhas longas nos espaços, não no meio da palavra (visualmente).
		
		" Corretor ortográfico
			set spelllang=pt_br,en " Corretor em português e inglês
			"set spell           " Efetivamente liga o corretor
			
		""" Outros
			"set scrolloff=3 " Deixa n linhas acima ou abaixo do cursor na tela com zt ou zb
			set confirm     " Abre um menu se eu fizer besteira
			set formatoptions=jlnq "ler fo-table. Configura quebra de linha automática e outros
			set formatoptions-=cro  "ler fo-table. Configura quebra de linha automática e outros
			
	" Folds
		set foldignore=""       " por padrão, ignora linhas que começam com "#"
		set foldcolumn=0        " coluna nonsense
		set foldmethod=indent   " folds pela identação
		set foldlevelstart=1    " nível dos folds quando abre o arquivo
		"set foldlevelstart=100
		
	" Identação e tabs
		" Visuais
			"set listchars=tab:\|-,space:* "Temporário para configurar identação
			set listchars=tab:\|\          " Mostra linhas de identação
			set list
			
		" Forma do tab (manter tabstop == shiftwidth)
			set noexpandtab  " Não substitui tabs por espaços
			set tabstop=4    " Quantos espaços um tab deve ter?
			set shiftwidth=4 " Espaços em um shift (tab a cada tabstop e espaços no resto)
			" Adicionais
			"set softtabstop=0 " se entendi bem, é um tabstop para o modo de inserção (0 usa tabstop) que opera os espaços
			"set smartindent    " indenta automáticamente de acordo com o tipo do arquivo
			" Não entendi
			"set preserveindent " Preserva o estilo de indentação das demais linhas
			"set smarttab       " Liga as tabs inteligentes (não entendi, mas ok)
		
	" Buscas
		set nohlsearch " Não marca as buscas depois q dei enter
		set ignorecase " Busca não é case-sensitive
		set smartcase  " Busca vira case-sensitive se tiver maiúscula NA BUSCA

" Mapeamentos (não colocar comentários após o mapeamento)
	"" Teclas-Lider ----
		let mapleader="\\"
		let maplocalleader=","
	
	"" Truques ----
		" Configurações do clipboard do sistema
		vnoremap ++ "+y
		nnoremap +p "+p
		nnoremap +P "+P
	
	"" Alterando comportamento padrão ----
		"nnoremap ~<Space> ~
		nnoremap 0 ^
		vnoremap 0 ^
		nnoremap Y v$y
		" salvar/fechar
		nnoremap ZW :w<cr>
		nnoremap ZQ :q<cr>
		nnoremap ZQ! :q!<cr>
		" removendo setas
		nnoremap <Up> <Nop>
		nnoremap <Down> <Nop>
		nnoremap <Left> <Nop>
		nnoremap <Right> <Nop>
		inoremap <Up> <Nop>
		inoremap <Down> <Nop>
		inoremap <Left> <Nop>
		inoremap <Right> <Nop>
		vnoremap <Up> <Nop>
		vnoremap <Down> <Nop>
		vnoremap <Left> <Nop>
		vnoremap <Right> <Nop>
		
	"" Simplificando operações ----
		" Folds
		nnoremap <Space> za
		" Janelas
		nnoremap <C-h> <C-w>h
		nnoremap <C-j> <C-w>j
		nnoremap <C-k> <C-w>k
		nnoremap <C-l> <C-w>l
		nnoremap <C-q> <C-w>q
		"nnoremap <C-\> :vsplit<cr>
		nnoremap <leader>\ :vsplit<cr>
		nnoremap <leader>- :split<cr>
		nnoremap <silent> <leader>j :resize -3<CR>
		nnoremap <silent> <leader>k :resize +3<CR>
		nnoremap <silent> <leader>h :vertical resize -3<CR>
		nnoremap <silent> <leader>l :vertical resize +3<CR>
		" Corretor ortográfico
		nnoremap <leader>s :set spell!<cr>
		" Outros
		vnoremap < <gv
		vnoremap > >gv
		"nnoremap ec :colorscheme 
		
	"" Editando o .vimrc ----
		nnoremap <leader>ev :vsplit $MYVIMRC<cr>
		"nnoremap <leader>ee :E ~/.config/nvim<cr>
		nnoremap <leader>es :source $MYVIMRC<cr>
	
" Functions
	function! RodaSeExiste(file)
		if filereadable(expand(a:file))
			exec 'source' a:file
		endif
	endfunction
	
	call RodaSeExiste(".config.vim")
	call RodaSeExiste("../.config.vim")
	call RodaSeExiste("../../.config.vim")

	augroup init_vim
		autocmd!
		autocmd BufWritePost init.vim :source $MYVIMRC
	augroup END

" TODO
	" Cores
