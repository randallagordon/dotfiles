" Color Schemes
NeoBundle 'tomasr/molokai'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'altercation/vim-colors-solarized'

" Extras
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'w0rp/ale' " Better than Syntastic?
NeoBundle 'wincent/command-t', {
  \   'build_commands': ['make', 'ruby'],
  \   'build': {
  \      'mac': 'cd ruby/command-t/ext/command-t && { make clean; /usr/local/opt/ruby/bin/ruby extconf.rb && make }'
  \   }
  \ }
" " Possibly related to weirdness with completion? (jj not escaping):
" " https://github.com/Valloric/YouCompleteMe/pull/2657/files#diff-bfddd777a9469dbfe6722747c01caa39R35
NeoBundle 'Valloric/YouCompleteMe', {
  \   'build_commands': ['python3'],
  \   'build': {
  \      'mac': 'python3 install.py --ts-completer --clang-completer && rm -r third_party/ycmd/third_party/tsserver'
  \   }
  \ } " working SHA: 21f1cc572832d2b2dda109208ba4191494523049
NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'     " Disabled as it pollutes my own snippets
NeoBundle 'mattn/emmet-vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'junegunn/rainbow_parentheses.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'metakirby5/codi.vim'
NeoBundle 'bogado/file-line'       " Ability to open files to a specific line:col
NeoBundle 'Chiel92/vim-autoformat' " Will be painful until 3x tsserver issue is fixed
NeoBundle 'kshenoy/vim-signature'  " Shows marks in guttter
NeoBundle 'mhinz/vim-signify'      " Shows git diff info in gutter
NeoBundle 'ap/vim-css-color'       " Performance havoc?
NeoBundle 'BenBergman/vsearch.vim' " make * in visual work more like normal mode
" NeoBundle 'jkerian/HiCursorWords'  " Interferes with balloons; Can slow down redraw/cursor movement
NeoBundle 'mileszs/ack.vim'
NeoBundle 'suan/vim-instant-markdown', {
  \   'build_commands': ['npm'],
  \   'build': {
  \      'mac': 'npm -g install instant-markdown-d'
  \   }
  \ }
NeoBundle 'ruanyl/coverage.vim'
NeoBundle 'paulkass/jira-vim', {
  \   'build_commands': ['pip3'],
  \   'build': {
  \      'mac': 'pip3 install --user -r requirements.txt'
  \   }
  \ }
NeoBundle 'DanilaMihailov/beacon.nvim'

" Motions
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'adelarsq/vim-matchit'
NeoBundle 'tmhedberg/indent-motion' " maps <Leader>[ and <Leader>] to jump to beg/end of a block
" NeoBundle 'mg979/vim-visual-multi' " Some mappings collide, need to remap

" Transformations/Objects/Targets
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'mvolkmann/vim-js-arrow-function'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'fvictorio/vim-textobj-backticks' " For a` and i`

" Tools
NeoBundle 'gregsexton/gitv'

" So many tpope goodies!
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-apathy'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-characterize'
NeoBundle 'tpope/vim-dadbod'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-dotenv'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-heroku'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'tpope/vim-scriptease'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language/Tooling Specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'sheerun/vim-polyglot' " Start with a great baseline
                                 " working SHA: 4f3df59be709bf0d5c5c67dc804fde49abdc2700

NeoBundle 'hail2u/vim-css3-syntax' " Suggested by `cakebaker/scss-syntax.vim` from Polyglot
" JavaScript/Node/TypeScript
NeoBundle 'Quramy/tsuquyomi'     " working SHA: 144526df5340d3bd0b413e6127c0393de171889a
NeoBundle 'okcompute/vim-javascript-motions'
NeoBundle 'moll/vim-node'
" NeoBundle 'jason0x43/vim-js-indent' " Possibly improved indenting?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To consider:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://github.com/christoomey/vim-conflicted " Builds on fugitive

" Google Maktaba/Glaive ecosystem
" NeoBundle 'google/vim-maktaba'
" NeoBundle 'google/vim-glaive'
" NeoBundle 'google/vim-coverage'       " No jest/istanbul support
" call glaive#Install() " Put this at the end of neobundle.vim?

" Not loading--why?
" NeoBundle 'inkarkat/vim-ingo-library' " Required for CountJump
" NeoBundle 'vim-scripts/ingo-library'
" NeoBundle 'vim-scripts/CountJump'     " Required for vim_movement
" NeoBundle 'vim-scripts/vim_movement'

" NeoBundle 'vim-scripts/TaskList.vim'
" NeoBundle 'qpkorr/vim-bufkill'
" NeoBundle 'nathanaelkane/vim-indent-guides' " Performance havoc?
" NeoBundle 'milkypostman/vim-togglelist'
" NeoBundle 'embear/vim-localvimrc'
" NeoBundle 'rizzatti/dash.vim'
" " NeoBundle 'vim-scripts/gitignore' " Sets `wildignore` based off .gitignore
" " NeoBundle 'zdwolfe/vim-gitwildignore' " Sets `wildignore` based off .gitignore
" " Works but doesn't know about worktrees:
" " NeoBundle 'euclio/gitignore.vim' " Sets `wildignore` based off .gitignore, but
" " uses Python2

" Deoplete and friends
" NeoBundle 'Shougo/deoplete.nvim'
" NeoBundle 'Shougo/denite.nvim'
" NeoBundle 'roxma/nvim-yarp'
" NeoBundle 'roxma/vim-hug-neovim-rpc'
