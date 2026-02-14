let g:vim_text_only = 1

filetype plugin on
filetype indent on
syntax on

colo andrew

runtime startup/settings.vim
runtime startup/commands.vim
runtime startup/autocommands.vim
runtime startup/mappings.vim
runtime startup/cyrillic.vim
runtime startup/windows.vim

runtime! ftplugin/man.vim
autocmd FileType man setlocal foldmethod=indent

if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif


" Presentation mode
" set background=light
" colo PaperColor
" let g:NERDTreeWinSize = 20
" set nowrap
