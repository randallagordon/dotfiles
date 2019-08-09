" Moar better buffer deletion—keeps splits open
command Bd bp\|bd \#

" Redirect a command's output to a buffer
command! -nargs=+ -complete=command Redir let s:reg = @@ | redir @"> | silent execute <q-args> | redir END | new | pu | 1,2d_ | let @@ = s:reg

" Read from command, but insert after curosr
" command Read a<CR><ESC>:.-1read <q-args><CR>I<BS><ESC>j0i<BS><ESC>l
