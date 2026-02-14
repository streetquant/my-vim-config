if has('clipboard')
  set clipboard=unnamedplus,unnamed
else
  set clipboard=
endif

set encoding=utf-8
set fileformats=unix,dos
set number
set ruler
set mouse=a
set showcmd
set incsearch
set nohlsearch

set autoread
set hidden
set nobackup
set nowritebackup
set noswapfile

if has('persistent_undo')
  set undodir=~/.vimundo
  set undofile
endif

set backspace=indent,eol,start
set autoindent
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set splitbelow
set splitright

let mapleader = " "
let maplocalleader = ","
