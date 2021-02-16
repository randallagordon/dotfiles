" Silence `Undefined variable: b:ycm_hover` errors coming from YCM's
" docs-on-auto-hover feature (i.e. `g:ycm_auto_hover='CursorHold'`)
let b:ycm_hover = {
  \ 'command': '',
  \ 'syntax': &filetype
  \ }
