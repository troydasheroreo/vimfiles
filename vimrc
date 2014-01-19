syntax on
filetype plugin indent on
set nocompatible
set modelines=0
set spell spelllang=en_us
set background=dark
set autoread
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
set rnu
set encoding=utf-8
set scrolloff=3
set autoindent
set autochdir
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set nowrap
set textwidth=70
set formatoptions=qrn1
set nobackup
set noswapfile

"colorscheme solarized
"set cursorline
highlight  CursorLine ctermbg=darkgrey ctermfg=None
autocmd InsertEnter * highlight  CursorLine ctermbg=None ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermbg=darkgrey ctermfg=None

" Fixes '485: Can't read file <tmp>' errors
let $TMP="/tmp"

" Fixes 'can't find specified path' errors (both work)
" set shell=/bin/bash\ -i
set shell=bash

" Wraps current word with [word][] (markdown I use with mdaddlinks)
nmap [j Bi[<esc>ea][]<esc>

