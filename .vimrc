" load plugins
execute pathogen#infect()

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

" add colorscheme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
