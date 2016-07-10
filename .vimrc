"
"	VIMRC
"
"
"""""""""""""""""""""""""""""""""""""
" PLUGIN
""""""""""
try
	source '/home/ryan/.vim/autoload/plug.vim'
catch
endtry

" LOAD PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'vim-utils/vim-man'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'pangloss/vim-javascript'


call plug#end()
"PLUGIN MAPS
map <F8> :TagbarToggle<CR>
map <leader>\ :NERDTreeToggle<CR>

" Colorscheme
colo badwolf
let g:badwolf_tabline=2

" Airline
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'


"irline_left_sep = '▶'  GENERAL
""""""""""
set autoread
set nocompatible

" Filetype plugins
filetype plugin on
filetype indent on

" Performance help
set lazyredraw

" UI settings
"""""""""""""
set cmdheight=2
set showcmd
set splitright

" Backspace works normally
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search settings
set hlsearch
set ignorecase
set incsearch

" Autocomplete menu
set wildmenu

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Colors etc
"""""""""""""
" Syntax highlighting
syntax enable

" Style
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Files
""""""""
" Backup etc off
set nobackup
set nowb
set noswapfile

" Tab/Indentation
""""""""""""""""""
" Tab size
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

" Command vars
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" MOVEMENT
"""""""""""
" Enable mouse movement
set mouse=a
" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Remember info about open buffers on close
set viminfo^=%

" Status line
""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \Line:\ %l\ Col:\ %c\

" KEY MAPPINGS w/<leader>
""""""""""""""""
" Map leader <- <Leader>
let mapleader=" "

" <HOME> KEY
imap <esc>OH <esc>0i
cmap <esc>OH <home>
nmap <esc>OH 0
" <END> KEY
nmap <esc>OF $
imap <esc>OF <esc>$a
cmap <esc>OF <end>

" Shortcuts
"""""""""""""""""
" Spell checking
" Press ,ss -> toggle spell checking
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s

map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
map <leader>tn :tabn<cr>
map r :redo<cr>
nmap P p

" HELPER FUNCTIONS
"""""""""""""""""""
function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
