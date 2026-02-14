# my-vim-config

Minimal Vim configuration for basic editing and navigation.

This repo is intentionally lightweight:
- no plugin manager
- no external plugin bundles/submodules
- fast startup and predictable behavior

## Active behavior

### Core editor settings
- syntax highlighting and filetype detection enabled
- line numbers, ruler, statusline
- UTF-8 encoding
- 2-space indentation defaults
- persistent undo (if supported by your Vim)
- mouse enabled

### Autocommands
- trims trailing whitespace on save
- restores last cursor position when reopening files
- runs `checktime` on focus/window enter

### Navigation mappings
- `j` / `k`: move by display lines (`gj` / `gk`)
- `J` / `K`: move 5 display lines
- `gh` / `gj` / `gk` / `gl`: move between split windows
- `<C-h>` / `<C-l>`: previous/next tab
- `<Left>` / `<Right>`: resize current split
- `<S-Left>` / `<S-Right>` / `<S-Up>` / `<S-Down>`: start/extend selection

### Clipboard behavior
- every yank is synced to system clipboard
- works with native clipboard support, or fallback tools:
  - `wl-copy`
  - `xclip`
  - `xsel`
  - `pbcopy`
  - `clip` / `clip.exe`
- mouse drag release in visual mode yanks selection

### Compatibility commands
Some ftplugins expect these commands, so minimal compatibility definitions are kept:
- `:RunCommand`
- `:ConsoleCommand`

## Install

```bash
git clone https://github.com/<YOUR_USERNAME>/my-vim-config.git ~/.vim
printf 'source ~/.vim/.vimrc\n' > ~/.vimrc
```

## Files that matter
- `.vimrc`
- `startup/settings.vim`
- `startup/mappings.vim`
- `startup/autocommands.vim`
- `startup/commands.vim`
