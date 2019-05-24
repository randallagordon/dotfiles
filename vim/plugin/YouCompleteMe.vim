let g:ycm_key_detailed_diagnostics = '<leader>ycm'
let g:ycm_complete_in_comments = 1 " Because type completions in Flow comments
let g:ycm_filepath_blacklist = {} " Because we want JSX filepath completion
let g:ycm_autoclose_preview_window_after_insertion = 1

" Make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
