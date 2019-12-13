To backup extensions:

`code --list-extensions > extensions`

To install extensions:

`cat extensions | xargs -n 1 code --install-extension`

To uninstall extensions:

`code --list-extensions | xargs -n 1 code --uninstall-extension`
