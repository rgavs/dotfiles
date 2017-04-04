"
"	NVIM INIT
"
"
"""""""""""""""""""""""""""""""""""""
" PLUGIN
""""""""""
try
  source '~/.config/nvim/autoload/plug.vim'
catch
endtry

" FOR VIM
if !has('nvim')			" nvim defaults but need to be set for vim
  set autoread
  set backspace=2
  set hlsearch
  set incsearch
  set laststatus=2	" Always show status line
  set mouse=a			  " Enable mouse movement
  set nocompatible
  set ttymouse=xterm2
  set wildmenu	    " Autocomplete menu
endif

" LOAD PLUGINS
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
"Plug 'chrisbra/colorizer'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex', { 'for': 'latex' }
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
"Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'zhaocai/dbext.vim', { 'for': 'sql' }

call plug#end()

" Map leader <- <Leader>
let mapleader=" "
set runtimepath+=/usr/share/vim/vimfiles/

"PLUGIN MAPS & OPTIONS
map   <leader>\	:TagbarToggle<CR>
map   <leader>/	:NERDTreeToggle<CR>
map   <leader>cc	<Plug>NERDCommenterToggle
map   <leader>e	:e<CR>	" reload file
map   <leader>es	:vsp ~/.config/nvim/init.vim<CR> " ~ 'edit source'
map   <leader>qq	:q<CR>	" quit
map   <leader>rr	:source ~/.config/nvim/init.vim<CR>
map   <leader>tn	:tabnext<CR>
map   <leader>tp	:tabprevious<CR>
map   <C-w>w :w<CR>
map   <leader>. zf  " Fold create
map   <leader>, zA  " Fold toggle (all under cursor)
map   <leader>+ :StripWhitespace<CR>  " from `ntpeters/vim-better-whitespace`
nmap 	r :redo<CR>
let g:badwolf_tabline = 2
let g:colors_name = 'badwolf'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1
let g:better_whitespace_filetypes_blacklist = ['markdown']
let g:javascript_plugin_jsdoc = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 25
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tagbar_width = 30
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = {
  \ 'tagbar': 1
  \}
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_global_conf.py'
let g:ycm_seed_identifiers_withsyntax=1
autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" GENERAL
""""""""""
set autoread

" Global
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Filetype plugins
filetype plugin on
filetype indent on

" Performance help
set lazyredraw

" UI settings
"""""""""""""
set cmdheight=2
set showcmd
set splitbelow
set splitright
set number

" Backspace/wrapping work normally
set backspace=2
set whichwrap+=<,>,h,l,[,]

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase  " overrride ignorecase when uppercase char provided

" Autocomplete menu
set wildmenu

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Colors etc
"""""""""""""
" Syntax highlighting
syntax enable

" Style
set background=dark

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
set sw=2		" shiftwidth: # spaces for autoindentation
set ts=2		" tabstop: # visual length of <TAB> character
set sts=2		" softtabstop: # spaces a <TAB> counts for w/<TAB> & <BS>
set autoindent
set smartindent
set expandtab
autocmd FileType c :setlocal sw=2 ts=2 sts=2
autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd FileType java :setlocal sw=2 ts=2 sts=2
autocmd FileType javascript :setlocal sw=2 ts=2 sts=2
autocmd FileType python :setlocal sw=4 ts=4 sts=4
autocmd FileType markdown :setlocal wrap

" Command vars
set ai "Auto indent
set si "Smart indent
set nowrap

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

" KEY MAPPINGS
""""""""""""""""
" <HOME> KEY
imap <esc>OH <esc>0i
cmap <esc>OH <home>
nmap <esc>OH 0
" <END> KEY
nmap <esc>OF $
imap <esc>OF <esc>$a
cmap <esc>OF <end>

" Spell checking
"""""""""""""""""
" Press ,ss -> toggle spell checking
map <leader>ss :setlocal spell!<cr>

" HELPER FUNCTIONS
"""""""""""""""""""
function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction

" Is buffer empty
function! IsEmpty()
  if (expand('%:p' == '')
    if (line('$') == 1 && getline(1) == '')
      return 1
    endif
  endif
endfunction

