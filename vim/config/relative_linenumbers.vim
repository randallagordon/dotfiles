set number " Show the line number of the line under the cursor

" Auto toggle `relativenumber` when switching buffers
augroup vimrc_set_relativenumber_only_active_window
  autocmd!
  autocmd VimEnter,BufWinEnter,WinEnter * setlocal relativenumber
  autocmd WinLeave * setlocal norelativenumber
augroup END
