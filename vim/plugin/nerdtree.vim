nmap <silent> <c-n> :NERDTreeToggle<CR> 
nmap ,n :NERDTreeFind<CR> " Open Tree at current file
let NERDTreeWinSize = 50
" Only reuse open files when they're open in the `currenttab` so we don't end
" up jumping around unexpectedly when trying to open files
let NERDTreeCustomOpenArgs = {'file': {'reuse': 'currenttab', 'where': 'p'}, 'dir': {}}
