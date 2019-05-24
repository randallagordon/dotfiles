" Map CamelCaseMotion motions over standard motions
" Remember this is here, could cause some issues with macros and repeats
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
" TODO: Fix ALL issues with `w` motion including space after the word
nmap cw ce
nmap dw de
