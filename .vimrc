" enable file type detection
filetype plugin indent on

" tab settings
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=2

" relative line numbers
set number relativenumber

" keyboard mappings
let mapleader=","

" go out in insert mode
inoremap jj <ESC>

" Enable syntax highlighting
syntax on



" Plugins ------------------------------------------------------------

" Load plugin
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'neovimhaskell/haskell-vim'

call plug#end()



" Plugin Configuration -----------------------------------------------

" vim-colors-solarized 
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

