
"-------------------------------------------------------------------------------------
"	______      _         _   _____                        _                     |
"	| ___ \    | |       (_) |  __ \                      | |                    |
"	| |_/ _   _| |_ _   _ _  | |  \/ __ ___   ____ _ _ __ | | ____ _ _ __        |
"	|    | | | | __| | | | | | | __ / _` \ \ / / _` | '_ \| |/ / _` | '__|       |
"	| |\ | |_| | |_| |_| | | | |_\ | (_| |\ V | (_| | | | |   | (_| | |          |
"	\_| \_\__,_|\__|\__,_| |  \____/\__,_| \_/ \__,_|_| |_|_|\_\__,_|_|          |
"			    _/ |                                                     |
"			   |__/       vimrc config                                   |        
"                                                                                    |
"                                                                                    |
"-------------------------------------------------------------------------------------







let mapleader = ","

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif


call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline-themes'
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-tex-fold'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"Pywal
  colorscheme wal


" Some basics:
	nnoremap c "_c
	set nocompatible
"	filetype plugin indent on
"	syntax on
	set encoding=utf-8
	set noswapfile
	set number relativenumber
	set ignorecase
	set showmatch


" Redraw the screen (clears search highlight)
	map <leader>r :nohl<CR><C-L>
" Disable automatic commenting on newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Automatically display all buffers when there's only one tab open
	let g:airline#extensions#tabline#enabled = 1
" Use powerline-fonts
	let g:airline_powerline_fonts = 1

" Sudo write for when you forget sudo
	cmap w!! w !sudo tee %

" Splits open at the bottom and right
	set splitbelow splitright
" Use deoplete.
	let g:deoplete#enable_at_startup = 1

" Enable autocompletion:
	set wildmode=longest,list,full
" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P


" vimtex config
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	set conceallevel=1
	let g:tex_conceal='abdmg'

" Spell Check 
	setlocal spell
	set spelllang=en_us 
	inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

	
" Vim-LaTeX rules for file compilation
"	set grepprg=grep\ -nH\ $*
"	filetype indent on
"	let g:tex_flavor='latex'
"	let g:Tex_MultipleCompileFormats = 'pdf'
"	let g:Tex_DefaultTargetFormat='pdf'
"	let g:Tex_CompileRule_pdf = "latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -bibtex -pdf $*"
" Ultisnips 
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" LaTeX autocompletion
	call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
