nnoremap s <Nop>
nnoremap Q <Nop>

" Move through display lines.
nnoremap <silent> j gj
nnoremap <silent> k gk
xnoremap <silent> j gj
xnoremap <silent> k gk

" Faster vertical movement.
nnoremap <silent> J 5gj
nnoremap <silent> K 5gk
xnoremap <silent> J 5gj
xnoremap <silent> K 5gk

" Move between tabs.
nnoremap <C-l> gt
nnoremap <C-h> gT

" Move between split windows.
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Resize split windows.
nnoremap <Left>  <C-w><
nnoremap <Right> <C-w>>

function! s:ClipboardCommand() abort
  if executable('wl-copy')
    return 'wl-copy'
  elseif executable('xclip')
    return 'xclip -selection clipboard'
  elseif executable('xsel')
    return 'xsel --clipboard --input'
  elseif executable('pbcopy')
    return 'pbcopy'
  elseif executable('clip.exe')
    return 'clip.exe'
  elseif executable('clip')
    return 'clip'
  endif

  return ''
endfunction

function! s:CopyRegisterToClipboard(register_name) abort
  let l:regname = empty(a:register_name) ? '"' : a:register_name
  let l:text = getreg(l:regname)
  let l:regtype = getregtype(l:regname)

  if has('clipboard')
    call setreg('+', l:text, l:regtype)
    call setreg('*', l:text, l:regtype)
    return
  endif

  let l:clipboard_command = s:ClipboardCommand()
  if empty(l:clipboard_command)
    return
  endif

  call system(l:clipboard_command, l:text)
endfunction

" Sync every yank (including visual selections) to system clipboard.
augroup clipboard_sync
  autocmd!
  autocmd TextYankPost * if v:event.operator ==# 'y' | call <SID>CopyRegisterToClipboard(v:event.regname) | endif
augroup END

" Mouse drag-select and copy on release.
xnoremap <silent> <LeftRelease> y
