set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'          " Let NeoBundle manage NeoBundle
runtime bundles.vim                            " Define what bundles to install
call neobundle#end()
NeoBundleCheck                                 " Check for missing bundles
