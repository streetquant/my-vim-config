" Minimal compatibility commands required by ftplugin files.
" They only define buffer-local :Run / :Console commands when a filetype asks for them.
command! -nargs=* RunCommand
      \ command! -range=% -buffer -complete=file -nargs=* Run <args>

command! -nargs=* ConsoleCommand
      \ command! -range=% -buffer -complete=file -nargs=* Console <args>
