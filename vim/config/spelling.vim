set spelllang=en_us
set complete+=kspell " Let completion source words from spell

" Spell check string literals
" TODO: Per-language functions?
function! SpellcheckStrings()
  set spell
  if exists('g:spellcheckStrings')
    syn region  javaScriptStringD        start=+"+  skip=+\\\\\|\\"+  end=+"\|$+ contains=javaScriptSpecial,@htmlPreproc,@NoSpell
    syn region  javaScriptStringS        start=+'+  skip=+\\\\\|\\'+  end=+'\|$+ contains=javaScriptSpecial,@htmlPreproc,@NoSpell
    unlet g:spellcheckStrings
  else
    syn region  javaScriptStringD        start=+"+  skip=+\\\\\|\\"+  end=+"\|$+ contains=javaScriptSpecial,@htmlPreproc,@Spell
    syn region  javaScriptStringS        start=+'+  skip=+\\\\\|\\'+  end=+'\|$+ contains=javaScriptSpecial,@htmlPreproc,@Spell
    let g:spellcheckStrings = "@Spell"
  endif
endfunction
map <leader>s :call SpellcheckStrings()<CR> " Also a `set spell` mapping!

" Turn off spellcheck entirely
" map <leader><leader>s :set nospell<cr> " `yos` from vim-unimpaired already
" does this and the mapping from easymotion is excellent!
