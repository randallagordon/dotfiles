set undofile
set cpoptions-=u

" Store swap and undo files in fixed location, rather than the working directory
set directory=~/.vimswap//,/var/tmp//,/tmp//,.
set undodir^=~/.vimswap
