"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override settings for vim-autoformat
" let g:formatprg_args_javascript='%'

" Define formatters for supertypes and some overrides
let g:formatters_javascript = ['prettier']
let g:formatters_javascript_jsx = ['prettier']
let g:formatters_javascriptreact = ['prettier']
let g:formatters_jsx = ['prettier']
let g:formatters_typescript = ['prettier']
let g:formatters_typescriptreact = ['prettier']

" 2.0 doesn't know about `--stdin`, this just copy, pastes, and removes that
" flag from the default definition in the plugin
let g:formatdef_prettier = '"prettier --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")." --tab-width=".shiftwidth()'

" Autoformat on write
au BufWrite * :Autoformat

autocmd FileType snippets,terraform,vim,yaml,sh,zsh,conf let b:autoformat_autoindent=0
autocmd FileType vim let g:autoformat_remove_trailing_spaces = 0
