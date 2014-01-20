syntax on
filetype plugin indent on
set nocompatible
set modelines=0
set spelllang=en_us
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
nnoremap [j bi[<esc>ea][]<esc>
inoremap [j <esc>bi[<esc>ea][]<space>

" Reformat paragraphs wrapped to default
nnoremap fmt !}fmt<CR>

" Jump to last position in a given file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Remember global variables
if !empty(&viminfo)
  set viminfo^=!
endif

" i feel so dirty using this, learn cnt-[ if you haven't already
inoremap kj <Esc>

" FKEY mappings
map <F1> :set number!<CR>
map <F2> :set relativenumber!<CR>
set pastetoggle=<F3>
map <F4> :set list!<CR>
map <F5> :set cursorline!<CR>
map <F6> :0,$!mdaddlinks<CR>G
map <F7> :set spell!<CR>

" Turn on spell checking when it makes more sense
if has("autocmd")
  au FileType markdown,txt,html set spell
endif

" Call out missing markdown reference links
function! MyHighlights()
  syn match markdownError '^\[.*\]:[ \t]*$'
endfunction
autocmd Syntax * call MyHighlights()
