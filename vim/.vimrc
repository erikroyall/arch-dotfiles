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

Plug 'jeaye/color_coded', { 
  \ 'do': 'cmake . && make && make install',
  \ 'for': ['c', 'cpp']
  \ }
Plug 'junegunn/goyo.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim', {
  \ 'for': ['php', 'html', 'javascript', 'jsx', 'ejs', 'hbs']
  \ }
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'yggdroot/indentline'

call plug#end()

" Status
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ }

" Leader
let mapleader = ","

