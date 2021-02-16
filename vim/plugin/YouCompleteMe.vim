let g:ycm_key_detailed_diagnostics = '<leader>ycm'
let g:ycm_complete_in_comments = 1 " Because type completions in Flow comments
let g:ycm_filepath_blacklist = {} " Because we want JSX filepath completion
let g:ycm_autoclose_preview_window_after_insertion = 1

" Make YCM compatible with UltiSnips (previously I was also using `supertab`)
" 2019-05-23: YCM now has `g:ycm_use_ultisnips_completer`, is this necessary?
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Toggle for hiding the docs shown on hover
nmap <leader>d <plug>(YCMHover)
