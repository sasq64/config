set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set number
set hidden
set incsearch
syntax enable
set wildmenu
set mouse=a

set tabstop=4
set shiftwidth=4

set laststatus=2
set showcmd
set background=dark
colorscheme delek
set mouse=a
autocmd FileType python set ts=4|set sw=4|set noex
