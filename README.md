# my-vim-config

Minimal Vim configuration for basic text editing.

This repo contains only core config files:
- no plugin manager
- no bundled plugins
- no CI/CD files

## Behavior

### Core settings
- filetype, indent, and syntax enabled
- UTF-8 encoding
- line numbers and ruler
- mouse enabled
- 2-space indentation defaults
- persistent undo when supported

### Autocommands
- trim trailing whitespace on save
- restore last cursor position on reopen
- run `checktime` on focus/window enter

### Navigation mappings
- `j` / `k`: move by display line (`gj` / `gk`)
- `J` / `K`: move 5 display lines
- `gh` / `gj` / `gk` / `gl`: move between split windows
- `<C-h>` / `<C-l>`: previous/next tab
- `<Left>` / `<Right>`: resize current split

### Clipboard behavior
- every yank is synced to the system clipboard
- fallback clipboard tools: `wl-copy`, `xclip`, `xsel`, `pbcopy`, `clip`, `clip.exe`
- mouse visual selection is copied on left-button release

## Install

```bash
git clone https://github.com/streetquant/my-vim-config.git ~/.vim
printf 'source ~/.vim/.vimrc\n' > ~/.vimrc
```

## Files
- `.vimrc`
- `.gitignore`
- `startup/settings.vim`
- `startup/autocommands.vim`
- `startup/mappings.vim`
