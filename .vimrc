set nocompatible

filetype on

" For Pathogen - A plugin manager for vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set noswapfile
set laststatus=2
set autoindent
set ruler
set relativenumber
set title
set backspace=indent,eol,start
set cursorline

" show existing tab with spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

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
nmap <leader>n @q 
nmap <leader>\ :e ~/.vimrc<CR>
" Color scheme related changes
" set dark background and color scheme
set background=dark
colorscheme base16-railscasts

" set up some custom colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=244
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=7
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" highlight the status bar when in insert mode
if version >= 700
    au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
    au InsertLeave * hi StatusLine ctermbg=240 ctermfg=7
endif

" For Nerd Tree
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "right"

" put git status, column/row number, total lines, and percentage in status
set statusline=%f\%m\%r\%h\%y\%w\ %{fugitive#statusline()}\ \%=\ %l,%c\ %p%%
