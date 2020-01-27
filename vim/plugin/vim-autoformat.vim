"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override settings for vim-autoformat
" let g:formatprg_args_javascript='%'

" Define formatters for supertypes and some overrides
let g:formatters_javascript_jsx = ['prettier']
let g:formatters_jsx = ['prettier']
let g:formatters_javascript = ['prettier']

" Autoformat on write
au BufWrite * :Autoformat

autocmd FileType snippets,terraform,vim,yaml,sh,zsh let b:autoformat_autoindent=0
autocmd FileType vim let g:autoformat_remove_trailing_spaces = 0
