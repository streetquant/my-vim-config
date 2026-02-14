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

function! VimrcSearchCount() abort
  if !exists('*searchcount') || empty(@/)
    return ''
  endif

  let l:result = searchcount({'recompute': 1, 'maxcount': 9999, 'timeout': 50})
  if empty(l:result) || get(l:result, 'total', 0) == 0
    return ''
  endif

  return printf('[%d/%d] ', l:result.current, l:result.total)
endfunction

set laststatus=2
set statusline=%f%m%r%h%w\ %=%{VimrcSearchCount()}%l:%c

let mapleader = " "
let maplocalleader = ","
