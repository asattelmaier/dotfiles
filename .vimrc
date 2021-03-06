" ----------------------------------------------------------------------
" General Settings
" ----------------------------------------------------------------------

if has('autocmd')
  filetype plugin indent on       " Enable file type detection
endif

set autoindent                    " Copy intent to new line

set smarttab                      "┐
set tabstop=2                     "|
set softtabstop=2                 "| Tab settings
set shiftwidth=2                  "|
set expandtab                     "┘

set number relativenumber         " Use relative line numbers

if has('cmdline_info')
  set ruler                       " Show cursor position
endif

syntax on                         " Enable syntax highlighting

set backspace=indent,eol,start    " More powerful backspacing

set colorcolumn=80                " Set line length marker

set cursorline                    " highlight current line

" Use a different mapleader (default '\')
let mapleader=","

" Exit insert mode
inoremap jj <ESC>



" ----------------------------------------------------------------------
" Plugins
" ----------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'neovimhaskell/haskell-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()



" ----------------------------------------------------------------------
" Plugins - Solarized Colorscheme 
" ----------------------------------------------------------------------

set background=dark
let g:solarized_termcolors=256
colorscheme solarized



" ----------------------------------------------------------------------
" Plugins - CoC
" ----------------------------------------------------------------------

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader> r  <Plug>(coc-rename)



" ----------------------------------------------------------------------
" Haskell Settings
" ----------------------------------------------------------------------

augroup haskell_bindings
  autocmd! haskell_bindings
  " Autoformat
  autocmd Filetype haskell nmap <buffer> <silent> <leader>c :%!stylish-haskell<CR>
augroup end

