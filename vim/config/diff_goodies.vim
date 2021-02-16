" Hex editing goodness
if !exists(":DiffOrig")
  command Hex :%!xxd
  command Unhex :%!xxd -r
endif

" Diff current buffer against saved file
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
    \ | wincmd p | diffthis
  nmap <leader>ds :DiffOrig<CR>
endif

nmap <leader>dt :windo diffthis<CR>          " Diff open buffers
nmap <leader>do :windo diffoff<CR>           " Turn diffs off
