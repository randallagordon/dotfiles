" Because Command-T will set `switchbuf=usetabs` if it is left unset...
" ...which obliterates how `:sb` works and `<C-w>z` 'zooms' along with it
set switchbuf=split

" Overwritees Buffergator's tabs map
" nnoremap <silent> <leader>t :CommandT<CR>

" For Ctrl-p harmony
nnoremap <silent> <C-p> :CommandT<CR>
