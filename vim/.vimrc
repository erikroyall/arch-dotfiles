" General
set relativenumber
set showmatch
set nocompatible
set mouse=
syntax on
filetype plugin on

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch

" Indentation
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

" Advanced
set ruler
set undolevels=1000
set backspace=indent,eol,start

" Plugins
call plug#begin('~/.vim/plugged')

"Plug 'jeaye/color_coded', { 
"  \ 'do': 'cmake . && make && make install',
"  \ 'for': ['c', 'cpp']
"  \ }
Plug 'junegunn/goyo.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim', {
  \ 'for': ['php', 'html', 'javascript', 'jsx', 'ejs', 'hbs']
  \ }
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
"Plug 'yggdroot/indentline'
Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'dracula/vim'
"Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/vim-haskell-indent'
Plug 'arcticicestudio/nord-vim'
"Plug 'ap/vim-buftabline'
Plug 'mkitt/tabline.vim'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'reedes/vim-colors-pencil'

call plug#end()

" Status
set laststatus=2
set noshowmode
let g:airline_theme='pencil'

let g:airline_powerline_fonts = 1

" Colorsheme
colorscheme pencil
"let g:one_allow_italics = 1 " I love italic for comments
set background=dark

" Leader
let mapleader = ","

map <C-x> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set hidden
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>

hi TabLine ctermfg=Blue ctermbg=Black cterm=NONE
hi TabLineFill ctermfg=Blue ctermbg=Black cterm=NONE
hi TabLineSel ctermfg=White ctermbg=Blue cterm=NONE

