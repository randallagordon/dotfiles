let g:jiraVimDomainName = ""
let g:jiraVimEmail = ""
let g:jiraVimToken = ""

nmap <leader>ii :JiraVimBoardOpenNosp KOAN<CR>

augroup jiravim_keybinds
    autocmd!
    autocmd FileType jirakanbanboardview nnoremap <buffer> <leader>io :JiraVimSelectIssueSp<CR>
    autocmd FileType jirakanbanboardview,jirasprintview nnoremap <buffer> <leader>im :JiraVimLoadMore<CR>
augroup END
