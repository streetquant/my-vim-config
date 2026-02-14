" Minimal Vim config for basic text editing.
set nocompatible
filetype plugin indent on
syntax on

runtime startup/settings.vim
runtime startup/autocommands.vim
runtime startup/mappings.vim

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
