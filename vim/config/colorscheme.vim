syntax on

" Molokai settings
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
hi LineNr ctermfg=243
hi clear Conceal " Ensure concealed colors don't have a gray background
set colorcolumn=+1 " highlight the `textwidth` column
highlight ColorColumn ctermbg=236 guibg=#1c1c1c

" augroup commandline_color_flip
  " au!
  " au CmdLineEnter * hi Normal ctermfg=black ctermbg=white
  " au CmdLineLeave * hi Normal ctermfg=252 ctermbg=234
" augroup END
