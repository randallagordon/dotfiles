" Similar format mappings
augroup similar_filetype_mappings
  " autocmd BufNewFile,BufRead *.tsx,*.jsx setfiletype typescript.tsx
  " autocmd BufNewFile,BufRead .jshintrc setfiletype javascript
  " autocmd BufNewFile,BufRead *.md setfiletype markdown
  autocmd BufNewFile,BufRead ~/.localrc setfiletype zsh
  autocmd BufNewFile,BufRead *.rss setfiletype xml
augroup END

augroup filetype_personal_styles
  autocmd FileType json set conceallevel=0 " Still need to see quotes
  autocmd FileType markdown set tw=80
  " autocmd FileType *.jsx let b:match_words='(:),\[:\],{:},<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(\%(=\|/\)\@<!>\|$\):<\@<=/\1>'
augroup END
