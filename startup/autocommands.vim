augroup vim_minimal_autocmds
  autocmd!

  " Remove trailing whitespace on save.
  autocmd BufWritePre *
        \ if !exists('g:skip_clean_whitespace') && !exists('b:skip_clean_whitespace') |
        \   call s:CleanWhitespace()                                                |
        \ endif

  " Restore last cursor position when reopening a file.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "keepjumps normal! g`\""                   |
        \ endif

  " Refresh buffers changed outside Vim.
  autocmd FocusGained * checktime
  autocmd WinEnter    * checktime

augroup END

function! s:CleanWhitespace()
  let l:view = winsaveview()
  silent! keeppatterns %s/\s\+$//e
  call winrestview(l:view)
endfunction
