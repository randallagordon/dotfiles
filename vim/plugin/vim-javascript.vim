let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_Infinity             = "∞"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_noarg_arrow_function = "□"
let g:javascript_conceal_underscore_arrow_function = "□"
" Obviated by Fira Code's ligatures:
" let g:javascript_conceal_arrow_function       = "⇒"

" Conceal semicolons—because, yuck!
fun s:conceal_semicolons()
  syntax match Normal ';' conceal cchar= 
  syntax match jsNoise ';' conceal cchar= 
  syntax match typescriptEndColons ';' conceal cchar= 
  syntax match typescriptBlock ';' conceal cchar= 
endfun

augroup conceal_semicolons
  au!
  autocmd Syntax javascript,typescript,typescript.tsx call s:conceal_semicolons()
augroup END
