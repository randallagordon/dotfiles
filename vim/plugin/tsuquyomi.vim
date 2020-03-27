augroup tsuquyomi_mappings
  au!
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>rs <Plug>(TsuquyomiRenameSymbol)
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>rsc <Plug>(TsuquyomiRenameSymbolC)
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>is <Plug>(TsuquyomiImport)
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>e :call tsuquyomi#asyncGeterr()<CR>
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>ts :echo tsuquyomi#hint()<CR>
augroup END
let g:tsuquyomi_disable_quickfix=1
