" Settings for ctrlp.vim installed in ./bundle

" Use git so .gitignore is honored, including cached and 'other'/untracked files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" let g:ctrlp_custom_ignore = {
  " \ 'dir':  '\v[\/](\.(git|hg)|node_modules|ios|android|)$',
  " \ 'file': '\v\.(exe|so|dll)$',
  " \ }
