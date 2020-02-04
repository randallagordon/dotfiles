" Similar format mappings
augroup similar_filetype_mappings
  " autocmd BufNewFile,BufRead *.tsx,*.jsx setfiletype typescript.tsx
  " autocmd BufNewFile,BufRead .jshintrc setfiletype javascript
  " autocmd BufNewFile,BufRead *.md setfiletype markdown
  autocmd BufNewFile,BufRead ~/.localrc setfiletype zsh
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead *.snippet setfiletype snippets
augroup END

augroup filetype_personal_styles
  autocmd FileType json set conceallevel=0 " Still need to see quotes
  autocmd FileType markdown set tw=80
  autocmd FileType javascript.jsx set tw=0
  " autocmd FileType *.jsx let b:match_words='(:),\[:\],{:},<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(\%(=\|/\)\@<!>\|$\):<\@<=/\1>'
augroup END

augroup reset_javascript_filetypes
  " In Vim 8.2 filetypes are improved—but I'm not on 8.2 yet and neither are my plugins!
  au!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript
  autocmd BufNewFile,BufRead *.tsx set syntax=typescriptreact
  autocmd BufNewFile,BufRead *.ts  set filetype=typescript
  autocmd BufNewFile,BufRead *.ts  set syntax=javascript
augroup END
