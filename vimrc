execute pathogen#infect()

" Need to call on initially to support git
filetype on
filetype off
set nocompatible

set shell=/bin/bash
set modelines=0
"set spell spelllang=en_us
"colorscheme solarized
set background=dark
set autoread
syntax enable
filetype plugin indent on
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
set cursorline
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
let g:syntastic_check_on_open=1
