" Arquivo de configurações específicas para LaTeX

" Plugins
	" quicktex ----
		let g:quicktex_usedefault = 0
		let g:quicktex_excludechar = ['\$', '^', '_', '{', '}', '(', ')', '[', ']']
		
		"\' '    : "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
		
		let g:quicktex_tex = {
			\'fr'   : '$\rho_\tau(<+++>)$ <++>',
			\'fdr'  : '$\rho^{(<+++>)}_\tau(<++>)$ <++>',
			\'frs'  : '$\rho^{*}_\tau(<+++>)$ <++>',
			\'fdrs' : '$\rho^{*(<+++>)}_\tau(<++>)$ <++>',
			\'fs'   : '$S_\tau(<+++>)$ <++>',
			\'fss'  : '$S_\tau^*(<+++>)$ <++>',
			\'fmb'  : '$\mathbb{<+++>}$ <++>',
			\'fmc'  : '$\mathcal{<+++>}$ <++>',
			\'fmt'  : '$\mathtt{<+++>}$ <++>',
			\'ad'   : "\<BS>\<cr>\<cr>\\begin{defin}[<+++>]\<cr><++>\<cr>\\end{defin}\<cr>\<cr><++>",
			\'ae'   : "\<BS>\<cr>\\begin{equation}\\label{eq_<+++>}\<cr><++>\<cr>\\end{equation}\<cr><++>",
			\'aE'   : "\<BS>\<cr>\\begin{equation}\\begin{split}\\label{eq_<+++>}\<cr><++>\\\\\<cr>\\end{split}\\end{equation}\<cr>\<cr><++>",
			\'af'   : "\<BS>\<cr>\<cr>\\begin{figure}[ht]\<cr>\\center\<cr>\\includegraphics[width=\\textwidth]{figuras/<+++>}\<cr>\\caption{<++>}\\label{fig_<++>}\<cr>\\end{figure}\<cr>\<cr><++>",
			\'aa'   : "\<BS>\<cr>\<cr>\\begin{algorithm}\<cr><+++>\\;\<cr>\\caption{<++>}\\label{alg_<++>}\<cr>\\end{algorithm}\<cr>\<cr><++>",
			\'ai'   : "\<BS>\<cr>\\begin{itemize}\<cr>\\item <+++>\<cr>\<cr>\\item <++>\<cr>\\end{itemize}\<cr>\<cr><++>",
			\'aie'  : "\<BS>\<cr>\\begin{enumerate}\<cr>\\item <+++>\<cr>\<cr>\\item <++>\<cr>\\end{enumerate}\<cr>\<cr><++>",
			\'ap'   : "\<BS>\<cr>\<cr>\\begin{proof}\<cr><+++>\<cr>\\end{proof}\<cr>\<cr><++>",
			\'at'   : "\\begin{table} [h<+++>]\<cr>\\center\<cr>\\begin{tabular}{<++>}\<cr>\\hline\<cr><++>\<cr>\\hline\<cr>\\end{tabular}\\caption{<++>\\label{tab_<++>}}\<cr>\\end{table}\<cr><++>",
			\'it'   : "\<BS>\<cr>\<cr>\\item <+++>",
			\'sit'  : "\<BS>\<cr>\\subitem <+++>",
			\'ssit' : "\<BS>\<cr>\\subsubitem <+++>",
			\'eq'   : '$<+++>$ <++>',
			\'Eq'   : "\<cr>$$<+++>$$\<cr><++>",
			\'sec'  : "\<cr>\<cr>\\section{<+++>}\<cr>	<++>",
			\'ssec' : "\<cr>\<cr>\\subsection{<+++>}\<cr>	<++>",
			\'sssec': "\<cr>\<cr>\\subsubsection{<+++>}\<cr>	<++>",
			\'cit'  : '\cite{<+++>} <++>',
			\'citp' : '\citep{<+++>} <++>',
			\'fn'   : '\textbf{<+++>} <++>',
			\'fi'   : '\textit{<+++>} <++>',
			\'ft'   : '\texttt{<+++>} <++>',
			\'lblc' : '\label{cap_<+++>}',
			\'lbls' : '\label{sec_<+++>}',
			\'lblss': '\label{ssec_<+++>}',
			\'lblf' : '\label{fig_<+++>}',
			\'lble' : '\label{eq_<+++>}',
			\'lblp' : '\label{prop_<+++>}',
			\'refc' : '\ref{cap_<+++>} <++>',
			\'refs' : '\ref{sec_<+++>} <++>',
			\'refss': '\ref{ssec_<+++>} <++>',
			\'refa' : '\ref{A_<+++>} <++>',
			\'reff' : '\ref{fig_<+++>} <++>',
			\'reft' : '\ref{tab_<+++>} <++>',
			\'refe' : '\eqref{eq_<+++>} <++>',
			\'refp' : '\ref{prop_<+++>} <++>',
			\'Tst'  : '$t$-Student',
			\'tst'  : '$T_{<+++>}$ <++>',
			\'Csq'  : 'Chi quadrado',
			\'csq'  : '$\chi^2_{<+++>}$ <+++>',
			\'prop' : '$prop$ ',
			\'c'    : '$c$',
			\'g'    : '$g(<+++>)$<++>',
			\'i'    : '$i$ ',
			\'j'    : '$j$ ',
			\'n'    : '$n$ ',
			\'p'    : '$p$ ',
			\'X'    : '$X$ ',
			\'x'    : '$x$ ',
			\'xi'   : '$x_i$ ',
			\'Y'    : '$Y$ ',
			\'y'    : '$y$ ',
			\'y1'   : '$y_1$ ',
			\'y2'   : '$y_2$ ',
			\'y3'   : '$y_3$ ',
			\'yi'   : '$y_i$ ',
			\'yn'   : '$y_n$ ',
			\'Z'    : '$Z$ ',
			\'z'    : '$z$ ',
			\'zi'   : '$z_i$ ',
			\'FA'   : '$F_A(<+++>)$ <++>',
			\'fA'   : '$f_A(<+++>)$ <++>',
			\'FZ'   : '$F_Z(<+++>)$ <++>',
			\'fZ'   : '$f_Z(<+++>)$ <++>',
			\'FY'   : '$F_Y(<+++>)$ <++>',
			\'FYx'  : '$F_{Y|x}(<+++>)$ <++>',
			\'fYx'  : '$f_{Y|x}(<+++>)$ <++>',
			\'FX'   : '$F_X(<+++>)$ <++>',
			\'Fe'   : '$F_\varepsilon$',
			\'QY'   : '$Q_<+++>(Y)$ <++>',
			\'QYx'  : '$Q_<+++>(Y|x)$ <++>',
			\'Qe'   : '$Q_<+++>(\varepsilon)$ <++>',
			\'ga'   : '$\alpha$ <+++>',
			\'gb'   : '$\beta$ <+++>',
			\'gb0'  : '$\beta_0$ <+++>',
			\'gb1'  : '$\beta_1$ <+++>',
			\'gb2'  : '$\beta_2$ <+++>',
			\'gb3'  : '$\beta_3$ <+++>',
			\'gb4'  : '$\beta_4$ <+++>',
			\'gb5'  : '$\beta_5$ <+++>',
			\'gbl'  : '$\beta_l$ <+++>',
			\'gbe'  : '$\beta_e$ <+++>',
			\'ge'   : '$\varepsilon$ <+++>',
			\'gf'   : '$\phi$ <+++>',
			\'gF'   : '$\Phi$ <+++>',
			\'gg'   : '$\gamma$ <+++>',
			\'gk'   : '$\kappa$ <+++>',
			\'gl'   : '$\lambda$ <+++>',
			\'gm'   : '$\mu$ <+++>',
			\'go'   : '$\omega$ <+++>',
			\'gO'   : '$\Omega$ <+++>',
			\'gp'   : '$\pi$ <+++>',
			\'gP'   : '$\Pi$ <+++>',
			\'gr'   : '$\rho$ <+++>',
			\'gs'   : '$\sigma$ <+++>',
			\'gS'   : '$\Sigma$ <+++>',
			\'gte'  : '$\theta$ <+++>',
			\'gt'   : '$\tau$ <+++>',
			\'gz'   : '$\zeta$ <+++>',
			\'a1'   : '$a_1$ ',
			\'a2'   : '$a_2$ ',
			\'b1'   : '$b_1$ ',
			\'b2'   : '$b_2$ ',
			\'c1'   : '$c_1$ ',
			\'c2'   : '$c_2$ ',
			\'h1'   : '$h_1$ ',
			\'h2'   : '$h_2$ ',
			\'r'    : '$r$ ',
			\'afr'  : "\<BS>\<cr>\<cr>\\begin{frame}\<cr><+++>\<cr>\\end{frame}",
			\'aFr'  : "\<BS>\<cr>\<cr>\\begin{frame}\\frametitle{<+++>}\<cr><++>\<cr>\\end{frame}",
			\'pp'   : "\<BS>\<cr>\<cr>\\pause\<cr>\<cr>",
		\}
		 " Espaço duplo, ambientes, formatação, referências

		let g:quicktex_math = {
			\'{#'     : '{<+++>}<++>',
			\'(#'     : '(<+++>)<++>',
			\'fr'     : '\rho_\tau(<+++>) <++>',
			\'fdr'    : '\rho^{(<+++>)}_\tau(<++>) <++>',
			\'frs'    : '\rho^{*}_\tau(<+++>) <++>',
			\'fdrs'   : '\rho^{*(<+++>)}_\tau(<++>) <++>',
			\'fs'     : 'S_\tau(<+++>) <++>',
			\'fss'    : 'S_\tau^*(<+++>) <++>',
			\'fmb'    : '\mathbb{<+++>} <++>',
			\'fmc'    : '\mathcal{<+++>} <++>',
			\'fmt'    : '\mathtt{<+++>} <++>',
			\'gbl'    : '\beta_l',
			\'gbe'    : '\beta_e',
			\'sist'   : "\\left\\{\\begin{matrix}\<CR><+++>\<CR>\\end{matrix}\\right.",
			\'fn'     : '\boldsymbol{<+++>}<++>',
			\'fh'     : '\hat{<+++>}<++>',
			\'ft'     : '\tilde{<+++>}<++>',
			\'ga'     : '\alpha',
			\'gb'     : '\beta',
			\'gb0'    : '\beta_0',
			\'gb1'    : '\beta_1',
			\'gb2'    : '\beta_2',
			\'gb3'    : '\beta_3',
			\'gb4'    : '\beta_4',
			\'gb5'    : '\beta_5',
			\'gbt'    : '\beta(\tau)',
			\'gd'     : '\delta',
			\'gD'     : '\Delta',
			\'ge'     : '\varepsilon',
			\'gf'     : '\phi',
			\'gF'     : '\Phi',
			\'gg'     : '\gamma',
			\'gl'     : '\lambda',
			\'gm'     : '\mu',
			\'go'     : '\omega',
			\'gO'     : '\Omega',
			\'gp'     : '\pi',
			\'gP'     : '\Pi',
			\'gr'     : '\rho',
			\'grf'    : '\rho_{<+++}(<++>)<++>',
			\'gs'     : '\sigma',
			\'gS'     : '\Sigma',
			\'gte'    : '\theta',
			\'gt'     : '\tau',
			\'gz'     : '\zeta',
			\'~'      : '\sim ',
			\'propor' : '\propto ',
			\'=='     : '\equiv ',
			\'<='     : '\leq ',
			\'>='     : '\geq ',
			\'!='     : '\neq ',
			\'<<'     : '\langle ',
			\'>>'     : '\rangle ',
			\'->'     : '\rightarrow ',
			\'<-'     : '\leftarrow ',
			\'x->'    : '\xrightarrow {<+++>} <++>',
			\'x<-'    : '\xleftarrow {<+++>} <++>',
			\'-->'    : '\Rightarrow ',
			\'<--'    : '\Leftarrow ',
			\'..'     : '\cdot',
			\'...'    : '\ldots',
			\'pi'     : '\langle <+++> \rangle <++>',
			\'parat'  : '\forall',
			\'inf'    : '\infty',
			\'frac'   : '\frac{<+++>}{<++>} <++>',
			\'sum'    : '\sum',
			\'Sum'    : '\sum_{<+++>}^{<++>} <++>',
			\'Sumi'   : '\sum_{i = 1}^{n} ',
			\'Sumj'   : '\sum_{j = 1}^{p} ',
			\'lim'    : '\lim_{<+++> \rightarrow <++>} <++>',
			\'dd'     : '\partial ',
			\'grad'   : '\nabla ',
			\'der'    : '\frac{\partial <+++>}{\partial <++>} <++>',
			\'int'    : '\int <+++> d<++>',
			\'Int'    : '\int_{<+++>}^{<++>} <++> d<++>',
			\'lble'   : '\label{eq_<+++>}',
			\'res'    : "y_i - \\boldsymbol{x}_i'\\boldsymbol{<+++>}",
			\'Res'    : "\\boldsymbol{y} - X'\\boldsymbol{<+++>}",
			\'tst'    : 'T_{<+++>} <++>',
			\'csq'    : '\chi^2_{<+++>} <+++>',
			\'ri'     : 'r_i',
			\'xi'     : 'x_i',
			\'Xi'     : 'X_i',
			\'y1'     : 'y_1',
			\'y2'     : 'y_2',
			\'y3'     : 'y_3',
			\'yi'     : 'y_i',
			\'yn'     : 'y_n',
			\'Yi'     : 'Y_i',
			\'zi'     : 'z_i',
			\'Zi'     : 'Z_i',
			\'FA'     : 'F_A(<+++>)<++>',
			\'fA'     : 'f_A(<+++>)<++>',
			\'Fe'     : 'F_\varepsilon(<+++>)<++>',
			\'fe'     : 'f_\varepsilon(<+++>)<++>',
			\'Qe'     : 'Q_\varepsilon(<+++>)<++>',
			\'FX'     : 'F_X(<+++>)<++>',
			\'fX'     : 'f_X(<+++>)<++>',
			\'FY'     : 'F_Y(<+++>)<++>',
			\'fY'     : 'f_Y(<+++>)<++>',
			\'QY'     : 'Q_<+++>(Y)<++>',
			\'FYx'    : 'F_{Y|x}(<+++>) <++>',
			\'fYx'    : 'f_{Y|x}(<+++>) <++>',
			\'QYx'    : 'Q_<+++>(Y|x)<++>',
			\'FZ'     : 'F_Z(<+++>)<++>',
			\'fZ'     : 'f_Z(<+++>)<++>',
			\'a1'     : 'a_1',
			\'a2'     : 'a_2',
			\'b1'     : 'b_1',
			\'b2'     : 'b_2',
			\'c1'     : 'c_1',
			\'c2'     : 'c_2',
			\'h1'     : 'h_1',
			\'h2'     : 'h_2',
		\}
		" Espaço duplo, letras gregas, sinais, operadores, referências

		let g:quicktex_bib = {
			\'l' : "@book{<+++>,\<CR>author={<++>},\<CR>title={<++>},\<CR>%series={<++>},\<CR>%edition={<++>},\<CR>address={<++>},\<CR>publisher={<++>},\<CR>year={<++>},\<CR>%doi={<++>}\<CR>}\<CR>",
			\'a' : "@article{<+++>,\<CR>author={<++>},\<CR>title={<++>},\<CR>journal={<++>},\<CR>volume={<++>},\<CR>number={<++>},\<CR>year={<++>},\<CR>pages={<++>},\<CR>publisher={<++>}\<CR>}\<CR>",
		\}

" Mapeamentos

	augroup LaTeX_gerais
		autocmd!
		autocmd BufRead,BufNewFile *.tex set filetype=tex
		autocmd FileType tex set mouse=a
		autocmd FileType tex syntax spell toplevel
		autocmd FileType tex nnoremap <leader>eb :e $BIBLI<cr>
		autocmd FileType tex,bib inoremap <buffer> jk <ESC>/<+*><CR>cf>
		autocmd FileType tex,bib inoremap <buffer> kj <++>
		autocmd FileType tex inoremap <buffer> <S-tab> \noindent 
		"autocmd FileType tex,bib inoremap <buffer> <tab><Space> <esc>/<+.*+><CR>"_c/+>/e<CR>
		
		" Compilar
		autocmd FileType tex nnoremap <buffer> <localleader>r :w<cr>:! pdflatex %<cr>
		autocmd FileType tex nnoremap <buffer> <localleader>b :w<cr>:! bibtex %:r.aux<cr>
		autocmd FileType tex nnoremap <buffer> <localleader>d :w<cr>:! find -maxdepth 1 -type f -not \( -name '*.tex' -o -name '*.pdf' -o -name '*.cls' -o -name '*.png' -o -name '*.jpg' -o -name '*.jpeg' \) -exec rm {} \;<cr>
		
		" Preview
		autocmd FileType tex nnoremap <buffer><silent> <localleader>p :w<cr>:! zathura %:r.pdf &<cr>
		autocmd FileType tex nnoremap <buffer> ZW :w<cr>:! pdflatex % &> /dev/null <cr><cr>
		
		"autocmd FileType tex nnoremap <buffer> <localleader>f :! Rscript ../figuras/figuras.R<cr>
	augroup END
	
	augroup LaTeX_bibli
		autocmd!
		autocmd BufRead *.bib set foldlevel=0
	augroup END

	augroup LaTeX_texto
		autocmd!
		"" Formatação - texto comum
		"autocmd FileType tex inoremap <buffer> <C-f>n \textbf{
		"autocmd FileType tex inoremap <buffer> <C-f>i \textit{
		"" Formatação - matemática
		"autocmd FileType tex inoremap <buffer> <C-f>b \boldsymbol{
		"autocmd FileType tex inoremap <buffer> <C-f>h \hat{
		"" Ambientes
		""autocmd FileType tex nnoremap <buffer> <localleader>f o<cr>\begin{figure}[h]<cr>\center<cr>\includegraphics[width=\textwidth]{figuras/}<cr>\caption{\label{fig:}}<cr>\end{figure}<esc>?{figuras/}<cr>a
		"autocmd FileType tex nnoremap <buffer> <localleader>e o<cr>\begin{equation}<cr>.<cr>\end{equation}<esc>ks
		"autocmd FileType tex nnoremap <buffer> <localleader>E o<cr>\begin{equation}\begin{split}<cr>.<cr>\end{split}\end{equation}<esc>ks
		"" Dmenu
		"autocmd FileType tex inoremap <buffer> <localleader>c \cite{<cr><esc>k:r!grep @ $BIBLI \| grep -o -P '(?<={).*(?=,)' \| rofi -dmenu -p "Escolha o artigo"<cr>kJxA} <esc>Ji
		"" Beamer
		"autocmd FileType tex nnoremap <buffer> <localleader>s o<cr>\begin{frame}<cr>.<cr>\end{frame}<esc>ks
		"autocmd FileType tex nnoremap <buffer> <localleader>S o<cr>\begin{frame}\frametitle{}<cr>\end{frame}<esc>2k$i
	augroup END
			
	augroup LaTeX_caracteres
		autocmd!
		" Grego
		"autocmd FileType tex inoremap <buffer> <C-g>a \alpha
		"autocmd FileType tex inoremap <buffer> <C-g>b \beta
		"autocmd FileType tex inoremap <buffer> <C-g>e \varepsilon
		"autocmd FileType tex inoremap <buffer> <C-g>f \phi
		"autocmd FileType tex inoremap <buffer> <C-g>F \Phi
		"autocmd FileType tex inoremap <buffer> <C-g>g \gamma
		"autocmd FileType tex inoremap <buffer> <C-g>k \kapp
		"autocmd FileType tex inoremap <buffer> <C-g>l \lambda
		"autocmd FileType tex inoremap <buffer> <C-g>m \mu
		"autocmd FileType tex inoremap <buffer> <C-g>o \omega
		"autocmd FileType tex inoremap <buffer> <C-g>O \Omega
		"autocmd FileType tex inoremap <buffer> <C-g>r \rho
		"autocmd FileType tex inoremap <buffer> <C-g>s \sigma
		"autocmd FileType tex inoremap <buffer> <C-g>S \Sigma
		""autocmd FileType tex iabbrev <buffer> <C-g>t \theta
		"autocmd FileType tex inoremap <buffer> <C-g>t \tau
		"" Notação de conjunto
		"autocmd FileType tex iabbrev <buffer> \R \mathbb{R}
		"" Sinais
		autocmd FileType tex inoremap <buffer> " ``
		autocmd FileType tex iabbrev <buffer> ~ \sim
		autocmd FileType tex iabbrev <buffer> <= \leq
		autocmd FileType tex iabbrev <buffer> >= \geq
		autocmd FileType tex iabbrev <buffer> != \neq
	augroup END

	augroup LaTeX_outros
		autocmd!
		autocmd FileType tex vnoremap <buffer> D hd~
	augroup END
