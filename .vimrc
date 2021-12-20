"          _                    
"         (_)                   
"   __   ___ _ __ ___  _ __ ___ 
"   \ \ / / | '_ ` _ \| '__/ __|
"    \ V /| | | | | | | | | (__ 
"     \_/ |_|_| |_| |_|_|  \___|
"
"
"
"======================================
"
"	    Plugins (vim-plug)	
"
"======================================	
"	
"====== Vim-Plug Auto Install ======
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"====== Plugins list ======
call plug#begin('~/.vim/plugged')

"   Themes
Plug 'fneu/breezy'
" Plug 'ayu-theme/ayu-vim', {'frozen':1} " Custom format
Plug 'DracoInferno/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"   Powerline ("status" bar at the bottom)
Plug 'itchyny/lightline.vim'
"   Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"   Auto close surroundings
Plug 'jiangmiao/auto-pairs'
"   Syntax highligth
Plug 'sheerun/vim-polyglot'
"	Highlight same words
Plug 'dominikduda/vim_current_word'

call plug#end()


"======================================
"	
"	    VIM Options	
"	
"======================================	

"===== Appearance =====

set t_Co=256
"set background=dark
set termguicolors
let ayucolor="dark"
colorscheme ayu 
"autocmd vimenter * ++nested colorscheme gruvbox

"===== Indentation =====
set autoindent "Indentation inherits from prev lines
"set expandtab "Convert tabs to spaces
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4 


"===== Search =====
set hlsearch 
set ignorecase
set incsearch
set smartcase

"===== Performances =====
"set lazyredraw "Disable rendering during macro exec

"===== Text Rendering =====
set encoding=utf-8
set linebreak "Avoid wrapping a line in the middle of a word
set scrolloff=5 "The number of screen lines to keep above and below the cursor
syntax on
filetype on

"===== User Interface =====
set laststatus=2 "Always display the status bar
"set cursorline "Highlight the line currently under cursor
set number
set relativenumber
set noerrorbells
set splitbelow splitright

"For tiny Cursor when in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"===== Miscellaneous =====
set backspace=indent,eol,start
"set nowrap
set nobackup
set undodir=~/.vim/undodir
set undofile
set nocompatible
set autochdir
set wildmode=longest,list,full
"set spell
let mapleader = " "

"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


"======================================
"
"	    Keymaps	
"
"======================================	

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"fzf open Files
nnoremap <C-p> :Files<Cr>
" Remap for closing brackets without plugin
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

" Set clipboard to system clipboard to allow proper copying and pasting
"set clipboard=unnamedplus
