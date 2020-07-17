set number " Show the line number of the line under the cursor

let g:relative_linenumbers = get(g:, 'relative_linenumbers', "1")

nmap yort :call ToggleRelativeLineNumbers()<CR>

function! ToggleRelativeLineNumbers()
  if (g:relative_linenumbers == "1")
    let g:relative_linenumbers = 0
    setlocal norelativenumber
  else
    let g:relative_linenumbers = 1
    setlocal relativenumber
  endif
endfunction

function! s:Enter()
  if (g:relative_linenumbers == "1")
    setlocal relativenumber
  endif
endfunction

function! s:Leave()
  if (g:relative_linenumbers == "1")
    setlocal norelativenumber
  endif
endfunction

" Auto toggle `relativenumber` when switching buffers
augroup vimrc_set_relativenumber_only_active_window
  autocmd!
  autocmd VimEnter,BufWinEnter,WinEnter * call s:Enter()
  autocmd WinLeave * call s:Leave()
augroup END
