set nocompatible

filetype on

set noswapfile
set autoindent
set number
set title

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Makes search act like search in modern browsers
set incsearch

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Key Mappings
" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
map <C-n> :NERDTreeToggle<CR>

" For Pathogen - A plugin manager for vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
set t_Co=16
colorscheme solarized

" For Nerd Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "right"
