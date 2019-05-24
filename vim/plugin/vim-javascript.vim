let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_noarg_arrow_function = "□"
let g:javascript_conceal_underscore_arrow_function = "□"
" Obviated by Fira Code's ligatures:
" let g:javascript_conceal_arrow_function       = "⇒"

" Conceal semicolons—because, yuck!
augroup conceal_semicolons
  autocmd FileType javascript,typescript,*.jsx syntax match Normal ';' conceal cchar= 
  autocmd FileType javascript,typescript,*.jsx syntax match jsNoise ';' conceal cchar= 
augroup END
