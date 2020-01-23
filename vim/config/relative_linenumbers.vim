set number " Show the line number of the line under the cursor

let g:relative_linenumbers = get(g:, 'relative_linenumbers', "1")

function! TurnOn()
  if (g:relative_linenumbers == "1")
    setlocal relativenumber
  endif
endfunction

function! TurnOff()
  if (g:relative_linenumbers == "1")
    setlocal norelativenumber
  endif
endfunction

" Auto toggle `relativenumber` when switching buffers
augroup vimrc_set_relativenumber_only_active_window
  autocmd!
  autocmd VimEnter,BufWinEnter,WinEnter * call TurnOn()
  autocmd WinLeave * call TurnOff()
augroup END
