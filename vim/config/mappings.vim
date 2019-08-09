" Save some damn time!
inoremap jj <ESC>
let mapleader = ","
let maplocalleader = ",,"
map ; :
noremap ;; ;

" Make cursor stay put after yanking
vmap y ygv<Esc>

" Bubble single lines with vim-unimpaired
nmap <leader>j ]e
nmap <leader>k [e
" Bubble multiple lines with vim-unimpaired
vmap <leader>j ]egv
vmap <leader>k [egv

" Jump between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tmux-esque window (buffer) zoom
nnoremap <C-w>z :tab sb<cr>

" File open helpers
" http://vimcasts.org/e/14
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

nnoremap <silent><leader>c :set list!<CR> " Toggle it!
" Copy relative path to the system pasteboard
nnoremap <silent><Leader>cfn :let @*=expand('%')<CR>

" Copy relative path and line number to the system pasteboard
nnoremap <silent><Leader>cln :let @*=expand('%').':'.line('.')<CR>

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" Yank to system pasteboard
noremap  <Leader>y  "*y
nnoremap <Leader>yy "*yy                     " In normal mode, yank entire line

" Find word under cursor in files, recursing from current directory down
map <leader>f :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Open file under cursor in new tab - Already mapped to <c-w>gf, commenting
" out for now since the original gf to open in the current buffer is useful
"map gf :tabnew <cfile><CR>

" Make <c-u> play nice with undo
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Write files with sudo permissions
cmap w!! %!sudo tee > /dev/null %

" Tagbar goodness
nmap <leader>\ :TagbarToggle<CR>

" TaskList plugin
map <leader>td <Plug>TaskList

" Ctrl + R style search & replace of selection
vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>

" Toggle paste mode to play nice with PuTTY
set pastetoggle=<leader>p

" Clear last search highlighting
map <leader>/ :noh<CR>

" visual indenting
vnoremap < <gv
vnoremap > >gv

" Bash-esque command mode motions
" Requires iTerm 2 to have a mapping set to `Meta` (vs. Esc+)
" I generally use right alt as Meta and right Command remapped to left alt/Esc+
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" Print the color highlight groups under the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" scoped, provenance
nmap <leader>sc :exe "!scoped % --position=" . line(".")<CR>
nmap <leader>sx :exe "!provenance % " . line(".") . " " . col(".") . "\| dot -Tpng \| ql" <CR>

augroup quickfix_close
  autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
    \   q :cclose<cr>:lclose<cr>
  autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
    \   bd|
    \   q | endif
augroup END
