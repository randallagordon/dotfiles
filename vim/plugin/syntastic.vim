"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Syntastic Settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Show ALL errors, crucial for scss-lint
let g:syntastic_aggregate_errors = 1

" Better symbols for Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Default Syntastic Checkers
" let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_scss_checkers = ['stylelint']
let g:syntastic_ruby_checkers = ['rubocop', 'mri', 'rubylint']

