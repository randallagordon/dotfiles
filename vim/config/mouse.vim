set mouse=a

" Support wide terminals > 223 columns
if has('mouse_sgr')
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Enable hover tooltips
if has('balloon_eval')
  set ballooneval
elseif has('balloon_eval_term')
  " tsuquyomi's expr isn't async and will lock up vim until tsserver is running
  set balloonevalterm
end
