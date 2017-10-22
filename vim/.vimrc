" General
set relativenumber
set number
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
Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/vim-haskell-indent'
Plug 'mkitt/tabline.vim'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'ervandew/supertab'

call plug#end()

" Status
set laststatus=2
set noshowmode
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1

" Colorsheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

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

" Makefiles
autocmd FileType make setlocal noexpandtab
