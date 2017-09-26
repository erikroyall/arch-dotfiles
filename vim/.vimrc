" General
set relativenumber
set showmatch
set nocompatible
set mouse=
syntax on

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch

" Indentation
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

" Advanced
set ruler
set undolevels=1000
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')

Plug 'jeaye/color_coded', { 
    \ 'do': 'cmake . && make && make install',
    \ 'for': ['c', 'cpp']
    \ }
Plug 'junegunn/goyo.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

" Status
set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }
